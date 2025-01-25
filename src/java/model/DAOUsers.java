/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import entity.Users;

import java.io.IOException;
import java.io.InputStream;
import java.net.PasswordAuthentication;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.PreparedStatement;
import java.util.Scanner;
import java.util.UUID;
import java.util.Vector;
import java.util.Base64;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author Dungt
 */
public class DAOUsers extends DBContext {

    public int addUser(Users user) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ,[username]\n"
                + "           ,[password]\n"
                + "           ,[fullname]\n"
                + "           ,[phone]\n"
                + "           ,[email]\n"
                + "           ,[roleId]\n"
                + "           ,[status])\n"
                + " VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getFullname());
            stmt.setString(4, user.getPhone());
            stmt.setString(5, user.getEmail());
            int roleId = user.getRole_id() == 0 ? 5 : user.getRole_id();
            stmt.setInt(6, roleId);
            stmt.setString(7, user.getStatus());
            n = stmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOUsers.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public int updateUser(Users user) {
        int n = 0;
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [username] = ?\n"
                + "      ,[password] = ?\n"
                + "      ,[fullname] = ?\n"
                + "      ,[phone] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[roleId] = ?\n"
                + "      ,[status] = ?\n"
                + " WHERE [user_id] = ?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getFullname());
            stmt.setString(4, user.getPhone());
            stmt.setString(5, user.getEmail());
            stmt.setInt(6, user.getRole_id());
            stmt.setString(7, user.getStatus());
            stmt.setInt(8, user.getUser_id());
            n = stmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOUsers.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public boolean sendPasswordChangeEmail(String email) {
        String token = UUID.randomUUID().toString();
        String encodedToken = Base64.getEncoder().encodeToString(token.getBytes());
        String sql = "UPDATE Users SET reset_token = ? WHERE email = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, encodedToken);
            stmt.setString(2, email);
            int rows = stmt.executeUpdate();
            if (rows > 0) {
                // Send email
                Properties props = new Properties();
                try (InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties")) {
                    if (input == null) {
                        System.out.println("Sorry, unable to find config.properties");
                        return false;
                    }
                    // load a properties file from class path, inside static method
                    props.load(input);
                } catch (IOException ex) {
                    ex.printStackTrace();
                }

                String from = props.getProperty("mail.smtp.from");
                String host = props.getProperty("mail.smtp.host");
                String port = props.getProperty("mail.smtp.port");
                String username = props.getProperty("mail.smtp.username");
                String password = props.getProperty("mail.smtp.password");

                Properties properties = System.getProperties();
                properties.setProperty("mail.smtp.host", host);
                properties.setProperty("mail.smtp.port", port);
                properties.setProperty("mail.smtp.auth", "true");
                properties.setProperty("mail.smtp.starttls.enable", "true");

                Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

                try {
                    MimeMessage message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(from));
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
                    message.setSubject("Password Change Confirmation");
                    String content = "Click the link to change your password: http://yourdomain.com/confirmPasswordChange?token="
                            + encodedToken;
                    message.setText(content);
                    Transport.send(message);
                    return true;
                } catch (MessagingException mex) {
                    mex.printStackTrace();
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUsers.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }

    public boolean updatePasswordWithToken(String token, String newPassword) {
        String sql = "UPDATE Users SET password = ?, reset_token = NULL WHERE reset_token = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, newPassword);
            stmt.setString(2, token);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            Logger.getLogger(DAOUsers.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public String checkRole(int userId) {
        String sql = "SELECT role_id FROM Users WHERE user_id = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int roleId = rs.getInt("role_id");
                switch (roleId) {
                    case 1:
                        return "admin";
                    case 2:
                        return "manager";
                    case 3:
                        return "staff";
                    case 4:
                        return "shipper";
                    case 5:
                        return "customer";
                    default:
                        return "unknown";
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUsers.class.getName()).log(Level.SEVERE, null, e);
        }
        return "unknown";
    }

    public Vector<Users> getAllUsers() {
        Vector<Users> users = new Vector<>();
        String sql = "SELECT * FROM Users";
        try (Statement state = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = state.executeQuery(sql)) {
            while (rs.next()) {

                int user_id = rs.getInt(1);
                String username = rs.getString(2);
                String password = rs.getString(3);
                String fullname = rs.getString(4);
                String phone = rs.getString(5);
                String email = rs.getString(6);
                int role_id = rs.getInt(7);
                String status = rs.getString(8);
                Users u = new Users(user_id, username, password, fullname, phone, email, role_id, status);
                users.add(u);

            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUsers.class.getName()).log(Level.SEVERE, null, e);
        }
        return users;
    }

    public boolean removeUser(int user_Id) {
        String sql = "DELETE FROM Users WHERE user_id = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, user_Id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            Logger.getLogger(DAOUsers.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public Users login(String username, String password) {
        String sql = "SELECT * FROM Users WHERE username = ? AND password = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Users(
                        rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("fullname"),
                        rs.getString("phone"),
                        rs.getString("email"),
                        rs.getInt("role_id"),
                        rs.getString("status"));
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUsers.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public static void main(String[] args) {
        DAOUsers dao = new DAOUsers();

        // System.out.println(dao.login("1", "Chu9"));
        int n = dao
                .addUser(new Users(001, "dungth", "123", "Nguyen Dung", "0982154896", "dung@gmail.com", 1, "Active"));

        // int n = dao.updateEmployee(new Employee("IS202", "Messi2", "Tuan", "Ha noi",
        // 1000, true, "IS", "IS001"));
        // if (n > 0) {
        // System.out.println("updated");
        // }
        // Vector<Employee> vector = dao.searchSalary("select * from Employee where
        // Salary like '15000'");
        // for (Employee emp : vector) {
        // System.out.println(emp);
        // }
        // Vector<Employee> vector2 = dao.searchFname("Alice");
        // for(Employee emp:vector2) {
        // System.out.println(emp);
        // }
        // int n = dao.removeEmp("1");
        // if (n > 0) {
        // System.out.println("remove");
        // }
    }
}