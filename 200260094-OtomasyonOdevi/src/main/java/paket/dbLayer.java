package paket;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class dbLayer {
    
    //Veritabanina baglanti
    public Connection connectDb() throws ClassNotFoundException, SQLException{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url="jdbc:mysql://localhost/otomasyon";
            Connection con=DriverManager.getConnection(url,"root","");
            return con;
        }
        catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex);
            return null;
        }
    }
    
    //Kullanıcının sisteme kayitli olup olmadiginin sorgulanmasi
    public boolean isUser(String username,String password){
        try{
            Connection con=connectDb();
            if(con!=null){
            String sql="SELECT * FROM users WHERE username=? AND password=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2,password);
            ResultSet set=ps.executeQuery();
            set.next();
            boolean result=set.isLast();
            con.close();
            return result;
        }
            else{
                con.close();
                return false;
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
            return false;
        }
    }
    
    //Guncel blogları listelemek icin tum bloglarin sorgulanmasi
    public ArrayList<ArrayList<String>> getBlogs(){
        try{
            Connection con=connectDb();
            if(con!=null){
                String sql="SELECT * FROM blog";
                PreparedStatement ps=con.prepareStatement(sql);
                ResultSet set=ps.executeQuery();
                ArrayList<ArrayList<String>>blogs=new ArrayList<ArrayList<String>>();
                while(set.next()){
                    ArrayList<String>tmp=new ArrayList<>();
                    tmp.add(set.getString("id"));
                    tmp.add(set.getString("header"));
                    tmp.add(set.getString("content"));
                    blogs.add(tmp);
                }
                con.close();
                return blogs;
            }
            else {
                con.close();
                return null;
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
            return null;
        }
    }
    
    //Bir bloga ait icerigi goruntulemek icin ID ile sorgulama
    public ArrayList<String> getBlog(String id){
        try{
            Connection con=connectDb();
            if(con!=null){
                String sql="SELECT * FROM blog WHERE id=?";
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1, id);
                ResultSet set=ps.executeQuery();
                ArrayList<String> blog=new ArrayList<>();
                while(set.next()){
                    blog.add(set.getString("id"));
                    blog.add(set.getString("header"));
                    blog.add(set.getString("content"));
                }
                con.close();
                return blog;
            }
            else {
                con.close();
                return null;
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
            return null;
        }
    }
    
    public void deleteBlog(String id){
        try{
            Connection con=connectDb();
            if(con!=null){
                String sql="DELETE FROM blog WHERE id=?";
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1, id);
                ps.executeUpdate();
                con.close();
            }
            else {
                con.close();
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
    
    public void updateBlog(String id,String header,String content){
        try{
            Connection con=connectDb();
            if(con!=null){
                String sql="UPDATE blog SET header=?, content=? WHERE id=?";
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1, header);
                ps.setString(2, content);
                ps.setString(3, id);
                ps.executeUpdate();
                con.close();
            }else{
                con.close();
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        
    }
    
    public void saveBlog(String header,String content){
        try{
            Connection con=connectDb();
            if(con!=null){
                String sql="INSERT INTO blog (header,content) VALUES (?,?)";
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1, header);
                ps.setString(2, content);
                ps.executeUpdate();
                con.close();
            }else{
                con.close();
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        
    }
    
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        dbLayer d=new dbLayer();
        d.getBlogs();
    }
    
}
