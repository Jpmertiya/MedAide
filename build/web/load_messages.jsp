<%@page import="Entities.serviceTaker"%>
<%@page import="java.util.List"%>
<%@page import="Entities.Notification_message"%>
<%@page import="Helper.connectionProvider"%>
<%@page import="DataAccessObject.notification_messageDao"%>
<%
    serviceTaker s = (serviceTaker) session.getAttribute("currentUser");
    int id = s.getId();
    notification_messageDao nm = new notification_messageDao(connectionProvider.getConnection());
    List<Notification_message> nf = nm.getNotificationMessage(id);
    for (Notification_message e : nf) {
    System.out.println("message id before sending "+e.getMessage_id());
%>
<a href="show_message.jsp?m_id=<%=e.getMessage_id()%>" style="text-decoration: none;">
<!--    <ul class="list-group center" style="display: inline-flex;">
        <li class="list-group-item"><%=e.getName()%></li>
        <li class="list-group-item"><%=e.getName()%></li>
    </ul>-->
    <div class="conatiner hoxhover right" style="width: 100%;display: inline-flex;color: goldenrod">
        <h3 style="width: 60%;"><%=e.getName()%></h3>
        <p style="width: 50%;text-align: right;"><%=e.getDateAndTime()%></p>
    </div>
</a>
<%
    }
%>