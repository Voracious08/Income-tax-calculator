<%-- 
    Document   : evaluation
    Created on : Apr 3, 2021, 2:10:31 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Income.Calc" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
 *{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
    background: rgba( 71, 147, 227, 1);
}
h2{
    text-align: center;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: white;
    padding: 30px 0;
}

/* Table Styles */

.table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 12px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}



            
            
            
            
            
            
            
            
            
            
            
        </style>
        
        
        
    </head>
    <body align = "middle">
       
       
        
        <% 
           Calc aryan = new Calc();
           
            
            
            
           aryan.setbasicsalary( Integer.parseInt(request.getParameter("v1")));  
           aryan.setsavings(Integer.parseInt(request.getParameter("v2"))); 
           aryan.sethomeloan(Integer.parseInt(request.getParameter("v3"))); 
          
           
           
           aryan.evaloldtax();
           aryan.evalnewtax(); 
             
        %>
        
  <h1> Evaluation Results!</h1>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th><h3>Basic Salary</h3> </th>
            <th>Savings</th>
            <th>Home Loan</th>
            <th>Tax(old)</th>
            <th>Tax(new)</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><% out.println(aryan.BasicSalary); %> </td>
            <td><% out.println(aryan.Savings); %></td>
            <td><% out.println(aryan.HomeLoan); %></td>
            <td><% out.println(aryan.old_tax); %></td>
            <td><% out.println(aryan.new_tax); %></td>
        </tr>
        <tr>
            <td> - </td>
            <td> - </td>
            <td> - </td>
            <td> - </td>
            <td> - </td>
        </tr>
        <tr>
            <td> - </td>
            <td> - </td>
            <td> - </td>
            <td> - </td>
            <td> - </td>
        </tr>
        
        <tbody>
    </table>
</div>
        
       
        
        <h2> Tax to be paid: <% out.println(aryan.result()); %>   </h2> 
       
         
       
       
      
       
    </body>
</html>
