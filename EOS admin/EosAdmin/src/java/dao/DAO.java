/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author Dũng
 */
public class DAO extends DBContext {

    public ArrayList<Users> getAllUser() {
        ArrayList<Users> list = new ArrayList<>();
        try {
            String sql = " select * from [Users]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public ArrayList<Course> getAllCourse() {
        ArrayList<Course> list = new ArrayList<>();
        try {
            String sql = " select * from [Course]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Course(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Course getCourse(String cid) {
        try {
            String sql = " select * from [Course] where [id] = " + cid;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new Course(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public ArrayList<Test> getAllTestByCourseId(String cid) {
        ArrayList<Test> list = new ArrayList<>();
        try {
            String sql = " select * from Test where id_course = " + cid;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Test(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Test> getAllTest() {
        ArrayList<Test> list = new ArrayList<>();
        try {
            String sql = " select * from Test ";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Test(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Test getTestById(String id) {
        try {
            String sql = " select * from Test  where [id] = " + id;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new Test(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Questions> getAllQuestionByTestId(String id) {
        ArrayList<Questions> list = new ArrayList<>();
        try {
            String sql = "  select * from Question where id_test = " + id;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Questions(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Questions getQuestionById(String id) {
        Questions q = new Questions();
        try {
            String sql = " select * from Question where [id] = " + id;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                q = new Questions(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8));

            }
        } catch (Exception e) {
        }
        return q;
    }

    //create hàm tạo dữ liệu
    public void addQuest(String quest, String option_a, String option_b, String option_c, String option_d, String right_option, String id_test) {
        try {
            String sql = "  insert into [Question] ([quest] ,[option_a] ,[option_b] ,[option_c] ,[option_d]  ,[right_option],[id_test]) values(?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, quest);
            stm.setString(2, option_a);
            stm.setString(3, option_b);
            stm.setString(4, option_c);
            stm.setString(5, option_d);
            stm.setString(6, right_option);
            stm.setString(7, id_test);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        new DAO().addQuest("test", "test", "test", "test", "test", "test", "3");
    }

    //delete xóa dữ liệu
    public void deleteQuest(String id) {
        try {
            String sql = "  delete  Question where id = " + id;
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    //Upadte cập nhật dữ liệu

    public void editQuest(String quest, String option_a, String option_b, String option_c, String option_d, String right_option, String id_test, String id) {
        try {
            String sql = " update [Question] set [quest] = ? ,[option_a]= ? ,[option_b]= ? ,[option_c]= ? ,[option_d] = ? ,[right_option]= ? where [id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, quest);
            stm.setString(2, option_a);
            stm.setString(3, option_b);
            stm.setString(4, option_c);
            stm.setString(5, option_d);
            stm.setString(6, right_option);
            stm.setString(7, id);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Upadte cập nhật dữ liệu
    public void editCourse(String name, String code, String id) {
        try {
            String sql = " update [Course] set [c_name] = ? ,[c_code]= ? where [id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, code);
            stm.setString(3, id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addCourse(String name, String code) {
        try {
            String sql = "  insert into [Course] ([c_name] ,[c_code] ) values(?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, code);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    //Upadte cập nhật dữ liệu
    public void editTest(String name, String type, String code, String time, String cid, String id) {
        try {
            String sql = " update [Test] set [t_name] = ? ,[t_type]= ?,[t_code]= ?, [id_course]= ?, [t_time]= ? where [id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, type);
            stm.setString(3, code);
            stm.setString(4, cid);
            stm.setString(5, time);
            stm.setString(6, id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addTest(String name, String type, String code, String time, String cid) {
        try {
            String sql = "  insert into [Test] ([t_name] ,[t_type] ,[t_code],[id_course], [t_time] ) values (?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, type);
            stm.setString(3, code);
            stm.setString(4, cid);
            stm.setString(5, time);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCourse(String id) {
        try {
            String sql = " delete from Test where id_course = " + id + "; delete from Course where id = " + id;
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();

        } catch (Exception e) {
            System.out.println("DeleteCourse: " + e.getMessage());
        }
    }

    public void deleteTest(String id) {
        try {
            String sql = " delete from Test where id = " + id;
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();

        } catch (Exception e) {
            System.out.println("DeleteTest: " + e.getMessage());
        }
    }

    public ArrayList<Questions> searchQuest(String quest, String tid) {
        try {
            String sql = "SELECT * FROM Question WHERE quest LIKE ? and id_test = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + quest + "%");
            ps.setInt(2, Integer.parseInt(tid));
            ResultSet rs = ps.executeQuery();

            ArrayList<Questions> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Questions(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8)));
            }
            return list;
        } catch (Exception e) {
            System.out.println("searchQuest:" + e.getMessage());
        }
        return null;
    }

    public ArrayList<Course> searchCourse(String cname) {
        System.out.println("okk");
        try {
            String sql = "SELECT * FROM Course WHERE c_name LIKE ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + cname + "%");
            ResultSet rs = ps.executeQuery();

            ArrayList<Course> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Course(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
            return list;
        } catch (Exception e) {
            System.out.println("searchCourse:" + e.getMessage());
        }
        return null;
    }

    public ArrayList<Test> searchTest(String tname, String cid) {
        try {
            String sql = "SELECT * FROM Test WHERE t_name LIKE ? and id_course = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + tname + "%");
            ps.setInt(2, Integer.parseInt(cid));
            ResultSet rs = ps.executeQuery();

            ArrayList<Test> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Test(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
            return list;
        } catch (Exception e) {
            System.out.println("searchTest:" + e.getMessage());
        }
        return null;
    }
}
