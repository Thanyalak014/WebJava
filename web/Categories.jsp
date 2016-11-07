
<%@page import="bookshop.Categories"%>
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
            <br />
            <h2>Category Search</h2>
            <form name="searchForm" action="SearchController">
                Enter Category ID:<input type="text" name="searchValue" value="" >
                <input type="submit" value="Category Name" name="searchButton" />
            </form>

            <%
                try {
                    // Create a session object if it is already not  created.
                    Categories acc = (Categories) session.getAttribute("searchResult");

                    if (acc != null) {
%>


            <table border="1">

                <tbody>
                    <tr bgcolor = "#CBAB8D">
                        <td align = "center">Category ID</td>
                       <td align = "center">Category Title</td> 
                    </tr>
                    <tr bgcolor = "#F4EFAF">
                        
                        <td><% out.println(acc.getCategoryId()); %></td>
                        <td><% out.println(acc.getCategoryName()); %></td>
                    </tr>
                   
                </tbody>
            </table>

            <%
                    } 

                } catch (Exception e) {
                    out.println(e.getMessage());
                }

            %>


    </body>
    </center>
</html>
