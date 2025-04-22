<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String editMode = request.getParameter("edit");
    boolean isEditing = "true".equals(editMode);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Profile</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sidebar.css" />
    <style>
        body {
            background-color: #f4f6fc;
            display: flex;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
            flex-grow: 1;
        }
        .profile-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        .profile-header {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .profile-icon-container {
            background-color: #2c3e50;
            color: #fff;
            border-radius: 50%;
            width: 70px;
            height: 70px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 2.5em;
            margin-right: 20px;
        }
        .profile-details {
            display: grid;
            grid-template-columns: auto auto;
            gap: 10px 20px;
        }
        .edit-profile-button {
            background-color: #e0e0e0;
            color: #333;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 0.9em;
        }
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 5px;
        }
    </style>
</head>

<body>
    <div class="sidebar">
        <button>User Profile</button>
    </div>

    <div class="container">
        <div class="profile-container">
            <div class="profile-header">
                <div class="profile-icon-container">A</div>
                <div class="profile-info-header">
                    <div>Admin ID: #444</div>
                </div>

                <%
                    if (isEditing) {
                %>
                    <!-- Save button -->
                    <form method="post" action="${pageContext.request.contextPath}/update-admin-profile">
                        <input type="hidden" name="email" value="${sessionScope.userEmail}" />
                        <input type="submit" value="Save" class="edit-profile-button" />
                    </form>
                <%
                    } else {
                %>
                    <!-- Edit button -->
                    <form method="get" action="admin-profile.jsp">
                        <input type="hidden" name="edit" value="true" />
                        <input type="submit" value="Edit Profile" class="edit-profile-button" />
                    </form>
                <%
                    }
                %>
            </div>

            <form method="post" action="${pageContext.request.contextPath}/update-admin-profile">
                <div class="profile-details">
                    <div>Full Name:</div>
                    <div>
                        <% if (isEditing) { %>
                            <input type="text" name="name" value="${sessionScope.userName}" required />
                        <% } else { %>
                            ${sessionScope.userName}
                        <% } %>
                    </div>

                    <div>Email:</div>
                    <div>
                        <% if (isEditing) { %>
                            <input type="email" name="email" value="${sessionScope.userEmail}" readonly />
                        <% } else { %>
                            ${sessionScope.userEmail}
                        <% } %>
                    </div>

                    <div>Joined Date:</div>
                    <div>2005-04-06</div> <!-- You can also fetch from DB -->
                </div>

                <% if (isEditing) { %>
                    <div style="margin-top: 15px;">
                        <input type="submit" value="Save Changes" class="edit-profile-button" />
                        <a href="admin-profile.jsp"><button type="button" class="edit-profile-button">Cancel</button></a>
                    </div>
                <% } %>
            </form>
        </div>
    </div>
</body>
</html>
