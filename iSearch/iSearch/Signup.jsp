<%@page import="java.sql.*"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>

<%		
	String JDBC_DRIVER = "com.mysql.jdbc.Driver", DB_URL = "jdbc:mysql://localhost/webhosting",USER = "root", PASS = "public";
		Connection conn = null;
		Statement stmt = null;
		String user=request.getParameter("use"),pass=request.getParameter("paswor");
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			stmt = conn.createStatement();
			String sql = "INSERT INTO UserCredential(USERNAME,PASSWORD,ROLE)VALUES(\""+user+"\",\""+pass+"\",\"admin\")";
			stmt.executeUpdate(sql);
            File file=new File("C:/iSWF/"+user+"/draft/");
            File file1=new File("C:/iSWF/"+user+"/fair/");
            file.mkdirs();
            file1.mkdirs();
			out.write("done");
		} catch (SQLException se) {
			out.write("er");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				conn.close();
			}catch(Exception e){

			}
		}
%>