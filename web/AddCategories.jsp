<%-- 
    Document   : AddCategories
    Created on : Nov 6, 2016, 8:17:26 PM
    Author     : Thanyalak Sirikul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <br>
    <div style="background-color: #88BBDD; width:100%;"> 
        <br>
        <a href="ListController">Category List</a>
        <a href="SearchController">Search Category By ID</a>
        <a href="SearchCategoryByNameController">Search Category By Name</a>
        <a href="AddCategories.jsp">Add Category</a>
        <br>
    <center>
    <body>
        <div style="background-color: #A4C8F0; width:100%;"> 
         <h1>Add Category</h1>


        <%

            String message = request.getParameter("message");
            if (message != null) {

                out.println(message);

            }

        %>

        <form name="formAddCategory" action="AddCategoryController"> 
            Category ID : <input type="text" name="id" value="" />
            Category Name : <input type="text" name="name" value="" />
        
            <input type="submit" value="Submit" name="AddCategory" />

        </form>

        <br><br>

            </body>
            </center>
</html>
