<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="myPackage.UtilModel" %>
<%@ page import="java.sql.*" %>
 
 <%
 	try {
            String mail = request.getParameter("email");
            String password = request.getParameter("password");

            Class.forName("com.mysql.jdbc.Driver");
            
            String url = "jdbc:mysql://localhost/eventech";
            String user = "root";
            String pwd  = "Pierrebing59";
            
            Connection con=DriverManager.getConnection(url, user, pwd);
            
            Statement st = (Statement) con.createStatement();
            
            String sql =	"SELECT * FROM utilisateurs " + 
            				"WHERE mailUtilisateur = '" + mail + "'" +
            				" AND mdpUtilisateur = '" + password + "'";
            
            System.out.println("SQL : " + sql);
            
			ResultSet result = (ResultSet) st.executeQuery(sql);
			
			while (result.next())
			{
				// creation d'une instance nommee l de la classe LivresModel
				UtilModel e = new UtilModel();

	    		e.setMailUtilisateur(result.getString("mailUtilisateur"));
	    		e.setMdpUtilisateur(result.getString("mdpUtilisateur"));
	    		
        		out.print("FORMULAIRE : " + mail);
            	out.print("FORMULAIRE : " + password);
            	out.print("");
            	out.print("TABLE      : " + e.getMailUtilisateur());
            	out.print("TABLE      : " + e.getMdpUtilisateur());
	    		
	            
	      		if (result.getString("mailUtilisateur").equals(mail) &&
	      			result.getString("mdpUtilisateur").equals(password))
	        	{
	      			%>
	        			<jsp:forward page="accueil.jsp"></jsp:forward>;
	        		<%
	        	}
	      		else
	        	{
	        		out.print("Echec de connexion, Veuillez recommercer !");
	        	}
			}
			out.print("Echec de connexion, Veuillez recommercer !");
 		}
		catch (Exception e)
		{
			e.printStackTrace();
			out.print("sorry ! please fill correct detail and try again" );
		}
 %>