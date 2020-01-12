<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!--  JAVASCRIPT -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../javascript/RegView.js" type="text/javascript"></script>

<link rel="stylesheet" href="../css/infoDocente.css">

<!------ Include the above in your HEAD tag ---------->
<meta charset="UTF-8">
<title>SmartBooking: Informazioni docente</title>
<% Model.Docente docente = (Model.Docente) request.getSession().getAttribute("infoDocente"); %>
</head>
<body>

	<div id="menu">
		<%@include file="menu.jsp"%>
	</div>
	
	<div id="container">


		<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img id="profile" src="../image/doc.gif" alt=""/>
                        </div>
                    </div>
                    <div class="col-md-6" >
                        <div class="profile-head" id="titleAbout">
                                    <h5>
                                        <%= docente.getNome() %> <%= docente.getCognome() %>
                                    </h5>
                                    <h6>
                                        Dipartimento di Informatica dell' Università degli Studi di Salerno
                                    </h6>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li> 
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Matricola</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=docente.getMatricola()%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nome</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=docente.getNome()%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Cognome</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=docente.getCognome()%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=docente.getEmail()%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Ufficio</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=docente.getUfficio()%></p>
                                            </div>
                                        </div>
                                        <div><br><br><br></div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Richiedi incontro con il docente</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p id="prenotazioneButton"><a id="link" href="####">Invia richiesta</a></p>
                                            </div>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>     
</div>

<div id="footer">
		<%@include file="../html/footer.html" %>
</div>


</body>
</html>