<%@ page import="project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
String q1="create table users(name varchar2(100),email varchar2(100) primary key,mobileNumber Number,securityQuestion varchar2(200),answer varchar2(200),password varchar2(100),address varchar2(500),city varchar2(100),state varchar2(100),country varchar2(100))";
String q2="create table product(id Number, name varchar2(500),category varchar2(200),price Number,active varchar2(10))";
String q3="create table cart(email varchar2(100),product_id Number,quantity number,price number,total number,address varchar2(500),city varchar2(100),state varchar2(100),country varchar2(100),mobileNumber Number,orderDate varchar2(100),delivaryDate varchar2(100),paymentMethod varchar2(100),transactionId varchar2(100),status varchar2(10))";
String q4="create table message(id number primary key,email varchar2(100),subject varchar2(200),body varchar2(1000))";
//System.out.println(q1);
//System.out.println(q2);
//System.out.println(q3);
System.out.println(q4);
//st.execute(q1); 
//st.execute(q2);
//st.execute(q3);
st.execute(q4);
System.out.print("Table created");
con.close(); 
}
catch(Exception e){
	System.out.print(e);
}
%>
