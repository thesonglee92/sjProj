package org.zerock.controller;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:/Users/song/git/sjProj/syProj/src/main/webapp/WEB-INF/spring/root-context.xml"})
//@Controller
public class DataSourceTest {

	
	
	@Inject	
	private DataSource ds;
	
	@Test
	public void testCon() throws Exception {
		try {
			Connection con = ds.getConnection();
			System.out.println(con);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}