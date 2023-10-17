<%-- 
    Document   : discussions.jsp
    Created on : 25 Nov 2022, 11:24:39 AM
    Author     : simondarota
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discussions</title>
        <style>
            #chat3 .form-control {
                border-color: transparent;
            }

            #chat3 .form-control:focus {
                border-color: transparent;
                box-shadow: inset 0px 0px 0px 1px transparent;
            }
            .badge-dot {
                border-radius: 50%;
                height: 10px;
                width: 10px;
                margin-left: 2.9rem;
                margin-top: -.75rem;
            }
        </style>
        <!-- MDB -->
    </head>
    <body style="background-color: #CDC4F9;">
        <jsp:include page='templete.jsp'/>
        <jsp:useBean id = "AllDiscussions" class="bean.AllDiscussions" scope="session">
        </jsp:useBean>
        <%@ page import='bean.Discussion'%>
        <%@ page import='bean.Student'%>

        <section style="background-color: #CDC4F9;">
            <div class="container py-5" style="height: fit-content">

                <div class="row">
                    <div class="col-md-12">

                        <div class="card" id="chat3" style="border-radius: 15px;">
                            <div class="card-body">

                                <div class="row">
                                    <div class="col-md-6 col-lg-5 col-xl-4 mb-4 mb-md-0">

                                        <div class="p-3">

                                            <div class="input-group rounded mb-3">

                                                <input type="search" class="form-control rounded" placeholder="Search for a mentor" aria-label="Search"
                                                       aria-describedby="search-addon" />
                                                <span class="input-group-text border-0" id="search-addon">
                                                    <i class="fas fa-search"></i>
                                                </span>

                                            </div>

                                            <div  style="position: relative; height: 400px; overflow: scroll">
                                                <ul class="list-unstyled mb-0">
                                                    <% for (int i=0; i< AllDiscussions.getMentorsList().size(); i++){ %>
                                                    <li class="p-2 border-bottom">
                                                        <a href="#!" class="d-flex justify-content-between">
                                                            <div class="d-flex flex-row">
                                                                <div>
                                                                    <img
                                                                        src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                                                        alt="avatar" class="d-flex align-self-center me-3" width="60">
                                                                    <span class="badge bg-success badge-dot"></span>
                                                                </div>
                                                                <div class="pt-1">
                                                                    <p class="fw-bold mb-0"> <%=AllDiscussions.getMentorsList().get(i).getFirstName()%></p>
                                                                </div>
                                                            </div>
                                                            <div class="pt-1">
                                                                <p class="small text-muted mb-1"></p>
                                                                <span class="badge bg-danger rounded-pill float-end">3</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                            </div>

                                        </div>

                                    </div>
                                    <% Student n = AllDiscussions.getStudentByID(0+""); %>

                                    <div class="col-md-6 col-lg-7 col-xl-8">
                                        <div class="text-muted d-flex justify-content-start align-items-center pe-3 pt-3 mt-2" style="background-color: #CDC4F9;">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                                 alt="avatar 3" style="width: 40px; height: 100%;">
                                            <p class="fw-bold mb-0"><%=n%></p>
                                        </div>
                                        <div class="pt-3 pe-3" data-mdb-perfect-scrollbar="true"
                                             style="position: relative; height: 400px; overflow: scroll">



                                            <% for (int j = 0; j< AllDiscussions.getDiscussions().size(); j++) { %>

                                            <div class="d-flex flex-row justify-content-start">
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                                     alt="avatar 1" style="width: 45px; height: 100%;">
                                                <div>
                                                    <p class="small p-2 ms-3 mb-1 rounded-3" style="background-color: #f5f6f7;"><%=AllDiscussions.getDiscussions().get(j).getText()%></p>
                                                    <p class="small ms-3 mb-3 rounded-3 text-muted float-end"><%=AllDiscussions.getDiscussions().get(j).getDate().toString()%></p>
                                                </div>
                                            </div>

                                            <%}%>
                                        </div>

                                        <div class="text-muted d-flex justify-content-start align-items-center pe-3 pt-3 mt-2">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                                 alt="avatar 3" style="width: 40px; height: 100%;">
                                            <form action="discussions.jsp" method="post">
                                                <div style="flex-direction: row"><!-- comment -->
                                                    <input type="text" class="form-control form-control-lg" id="message" name = "message" placeholder="Type your message">

                                                    <input style="right: 10px; " class="btn-primary" type="submit" value="Send">
                                                </div>
                                            </form>

                                            <a class="ms-1 text-muted" href="#!"> <i class="fas fa-paperclip"></i></a>
                                            <a class="ms-3 text-muted" href="#!"> <i class="fas fa-smile"></i></a>
                                            <a class="ms-3" href="#!"><i class="fas fa-paper-plane"></i></a>
                                        </div>

                                        <%     
                                            if( request.getParameter("message")!=null && !request.getParameter("message").equals("")){
                                                Discussion d = new Discussion();
                                                Student fStudent = n;
                                                fStudent.setFirstName("Foo");
                                                fStudent.setLastName("Bazz");
                                                d.setToStudent(fStudent);
                                                d.setText(request.getParameter("message"));
                                                AllDiscussions.getDiscussions().add(d);
                                                System.out.println(AllDiscussions);
                                            }
                                        %>              
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </section>
        <jsp:include page='footer.jsp'/>

    </body>
</html>
