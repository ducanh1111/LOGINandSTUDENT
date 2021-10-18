/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class StudentDBContext extends DBContext {

    public ArrayList<Student> getStudents() {
        ArrayList<Student> students = new ArrayList<>();
        try {
            String sql = "SELECT [sid],[sname],[gender],[dob],[phonenumber],[cardnumber],[address]\n"
                    + "  FROM [Student]";

            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("sid"));
                s.setName(rs.getString("sname"));
                s.setGender(rs.getBoolean("gender"));
                s.setDob(rs.getDate("dob"));
                s.setPhonenumber(rs.getString("phonenumber"));
                s.setCardnumber(rs.getString("cardnumber"));
                s.setAddress(rs.getString("address"));
                students.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }

}
