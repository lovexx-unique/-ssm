package test.com.pets.controller; 

import junit.framework.Test; 
import junit.framework.TestSuite; 
import junit.framework.TestCase; 

/** 
* ForumController Tester. 
* 
* @author <Authors name> 
* @since <pre>11/08/2020</pre> 
* @version 1.0 
*/ 
public class ForumControllerTest extends TestCase { 
public ForumControllerTest(String name) { 
super(name); 
} 

public void setUp() throws Exception { 
super.setUp(); 
} 

public void tearDown() throws Exception { 
super.tearDown(); 
} 

/** 
* 
* Method: selectAll(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage, Model model) 
* 
*/ 
public void testSelectAll() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: addForum(Forum forum, Model model) 
* 
*/ 
public void testAddForum() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: delForum(int id) 
* 
*/ 
public void testDelForum() throws Exception { 
//TODO: Test goes here... 
} 



public static Test suite() { 
return new TestSuite(ForumControllerTest.class); 
} 
} 
