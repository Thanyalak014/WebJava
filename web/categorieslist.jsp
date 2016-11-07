
<%@page import="bookshop.Categories"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <a href="ListController">Category List</a>
        <a href="SearchController">Search Category By ID</a>
        <a href="SearchCategoryByNameController">Search Category By Name</a>
        <a href="AddCategories.jsp">Add Category</a>
    <center>
    <body>
        <div style="background-color: #FFBBCC; width:100%;"> 
        <h1>Category List</h1>

        <%
            try {

                List<Categories> catList = (List<Categories>) session.getAttribute("listResult");

                if (catList != null) {
                    //    out.println("not null");
                    //   out.println(filmList.size());

        %>
        <table border="1">

            <tbody>
                <tr bgcolor = "#CBAB8D">
                    <td align = "center">Category ID</td>
                    <td align = "center">Category Name</td>
          

                </tr>
                <%                        for (Categories acc : catList) {
                %>
                <tr bgcolor = "#F4EFAF">
                    <td><% out.println(acc.getCategoryId()); %></td>
                    <td><% out.println(acc.getCategoryName()); %></td>
                </tr>
                <% } %>
            </tbody>
        </table>  


        <%

                } else {
                    out.println("return null");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("error");
            }

        %>
    </body>
    </center>
</html>
