package com.xinyan.mms.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;


public class JdbcUtil {
	private JdbcUtil() {
	}

	// 数据库连
	private static DataSource DataSource = new ComboPooledDataSource("jdbcApp");

	public static DataSource getDataSource() {
		return DataSource;
	}

	public static Connection getConnection() {
		try {


			return DataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 关闭数据
	public static void close(Connection conn) {
		if (conn != null) {
			try {

				conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 测试数据库连�?
	public static void main(String[] args) {
		Connection conn = getConnection();
		if (conn != null) {
			System.out.println(conn);
			close(conn);
		}
	}
}
