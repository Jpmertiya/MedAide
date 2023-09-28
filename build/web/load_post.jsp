<%@page import="java.util.List"%>
<%@page import="Entities.posts"%>
<%@page import="Helper.connectionProvider"%>
<%@page import="DataAccessObject.userDao"%>
<div class="items">

    <%
        userDao d = new userDao(connectionProvider.getConnection());
        List<posts> post = d.getAllPosts();
        for (posts e : post) {
    %>
    <div class=" card job-hover" style="width: 18rem; height: auto;">
        <div class="card-body">
            <a href="show_job.jsp?job_id=<%=e.getJob_id()%>" class="show_job">
                <div class="sub-img1">
                    <%
                        if (e.getPhoto().equals("default.jpg")) {
                    %>
                    <img src="images/default1.jpg" class="card-img-top" >
                    <%
                    } else {
                    %>
                    <img src="postImages/<%=e.getPhoto()%>" class="card-img-top" >
                    <%
                    }%>    
                </div>
                <h3><%= e.getType()%></h3>
                <h4>Duration: <%= e.getDuration()%></h4>
                <p>Select job according to your skill</p>
            </a>
        </div>
        <div class="card-footer text-muted text-center" >
            <a href="notificationMessage_save?st_id=<%=e.getSt_id()%>" class="btn btn-outline-secondary  " >Accept</a> 
        </div>
    </div>
    <%
        }
    %>

</div>