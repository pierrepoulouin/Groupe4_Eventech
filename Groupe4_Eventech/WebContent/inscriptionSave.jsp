<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
 try {
            String mail = request.getParameter("mailUtilisateur");
            String p = request.getParameter("mdpUtilisateur");
            String k = request.getParameter("nomUtilisateur");
            String h = request.getParameter("prenomUtilisateur");
            String j = request.getParameter("typeUtilisateur");
            String q = request.getParameter("telephone");
            
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String url = "jdbc:mysql://localhost:3306/eventech";
            String user = "root";
            String pwd= "Pierrebing59";
            
            Connection con=DriverManager.getConnection(url, user, pwd);
            
            //Création requête sql INSERT
            String sql = "insert into utilisateurs values(?,?,?,?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(sql);
                
            ps.setString(1, mail);
            ps.setString(2, p);
            ps.setString(3, k);
            ps.setString(4, h);
            ps.setString(5, j);
            ps.setString(6, q);
            
                    
            int i = ps.executeUpdate();
                    
                    
            if ( i > 0 )
            {
            %>
               <jsp:forward page="connexion.jsp"></jsp:forward>
            <% 
            }
            else {
                %> <jsp:forward page="error.jsp"></jsp:forward> <% 
            }
                
 }
 catch(Exception e)
 {
	 e.printStackTrace();
	 %> <jsp:forward page="error.jsp"></jsp:forward> <%
 }

 %>
