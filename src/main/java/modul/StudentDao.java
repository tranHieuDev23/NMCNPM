/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modul;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author quangkhanh
 */
public class StudentDao {

    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/ClassManagement";
    private static final String DATABASE_USER = "admin";
    private static final String DATABASE_PASSWORD = "123456";

    private Connection conn;

    private StudentDao() {
        try {
            conn = DriverManager.getConnection(DATABASE_URL, DATABASE_USER, DATABASE_PASSWORD);            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static StudentDao instance = null;

    public static StudentDao getInstance() {
        if (instance == null)
            instance = new StudentDao();
        return instance;
    }

    public int getNumberOfStudents() {
        try {
            String sql = "select count(*) from student";
            Statement statement = conn.createStatement();
            statement.executeQuery(sql);
            ResultSet rs = statement.getResultSet();
            while(rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public ArrayList<Student> getStudentFromDatabase() {
        ArrayList<Student> result = new ArrayList<>();
        try {
            Statement statement = conn.createStatement();
            String sql = "select * from student";
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                Student extra = new Student();
                extra.setFirstName(rs.getString("firstName"));
                extra.setLastName(rs.getString("lastName"));
                extra.setAddress(rs.getString("address"));
                extra.setStudentId(rs.getInt("student_id"));
                extra.setPassword(rs.getString("password"));
                result.add(extra);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public ArrayList<Student> getStudentFromDatabase(int offset, int limit) {
        ArrayList<Student> result = new ArrayList<>();
        try {
            Statement statement = conn.createStatement();
            String sql = "select SQL_CALC_FOUND_ROWS * from student limit " + offset + ", " + limit;
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                Student extra = new Student();
                extra.setFirstName(rs.getString("firstName"));
                extra.setLastName(rs.getString("lastName"));
                extra.setAddress(rs.getString("address"));
                extra.setStudentId(rs.getInt("student_id"));
                extra.setPassword(rs.getString("password"));
                result.add(extra);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
