<%-- 
    Document   : SearchName
    Created on : Nov 7, 2016, 9:09:30 AM
    Author     : Thanyalak Sirikul
--%>

<%@page import="bookshop.Categories"%>
<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div style="background-color: #88BBDD; width:100%;"> 
        <br>
    <a href="ListController">Category List</a>
    <a href="SearchController">Search Category By ID</a>
    <a href="SearchCategoryByNameController">Search Category By Name</a>
    <a href="AddCategories.jsp">Add Category</a>
    <center>
        <body>
            <div style="background-color: #A4C8F0; width:100%;"> 
                <h1>Search Category Name</h1>

                <%
                    try {
                        List<Categories> actorList = (List<Categories>) session.getAttribute("actorListResult");
                        if (actorList != null) {
                            if (actorList.size() != 0) {
                                //out.println("not null");
                                // out.println(actorList.size());
                %>
                <table border="1">
                    <tbody>
                        <tr bgcolor = "#CBAB8D">
                            <td align = "center">Category ID</td>
                            <td align = "center">Category Name</td>
                        </tr>
                        <% for (Categories acc : actorList) {
                        %>
                        <tr bgcolor = "#F4EFAF"> 
                            <td ><% out.println(acc.getCategoryId()); %></td>


                            <td><% out.println(acc.getCategoryName()); %></td>

                        </tr>
                        <% } %>
                    </tbody>
                </table>
                <%

                            }

                        } else {
                            out.println("return null");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("error");
                    }
                %>

               
                    <form name="formSearchActor" action="SearchCategoryByNameController" >

                    Search by name: <input type="text" name="searchValue" value="" />

                    <input type="submit" value="Search" name="SearchActor" />

                </form>
                <br>
        </body>
    </center>

</html>
