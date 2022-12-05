package com.moaaz.MoaazClothes.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DatabaseConnection {

	protected Connection connection;
	protected PreparedStatement s;
	protected String sql;
	protected ResultSet result;
	
//	private String host = "jdbc:mysql://localhost:3306/clothes";
	private String host = "jdbc:mysql://test-aws.cqogqf5aqmsd.us-east-1.rds.amazonaws.com:3306/DatabaseIsCreated";
	private String user = "root";
	private String password = "test-aws";

	protected Connection createConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(host, user, password);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return connection;
	}

//	protected void closeConnectionWithResult(Connection connection, PreparedStatement s, ResultSet res)
//			throws SQLException {
//		connection.close();
//		s.close();
//		res.close();
//	}
//
//	protected void closeConnection(Connection connection, PreparedStatement s) throws SQLException {
//		connection.close();
//		s.close();
//	}
}
