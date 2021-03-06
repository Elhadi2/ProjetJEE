
<%@page import="dao.AxeDao"%>
<%@page import="dao.EcoleDao"%>
<%@page import="dao.DaoFactory, beans.*, java.util.*"%>
<%
	DaoFactory fac = DaoFactory.getInstance();
	EcoleDao daoE = fac.getEcoleDao();
	AxeDao daoA = fac.getAxeDao();
	List<Ecole> ecole = daoE.findAll();
	String name = null;
	if(request.getParameterMap().containsKey("id")){
		name = daoA.getAxe(Long.parseLong(request.getParameter("id")));
	}
%>


<jsp:include page="header.jsp" />



<div style="background: white; padding: 100px">
    
    <div class="container">
      <div class="row">
        <div class="col">
          <div class="section_title text-center">
            <h1 style="padding-bottom: 50px;">Les resultats d'evaluation par axe</h1>
          </div>
        </div>
      </div>
      
      

      <h3 style="padding-bottom: 30px;">Choisissez un axe : </h3>
      <div class="row services_row">

        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
          <div class="icon_container d-flex flex-column justify-content-end">
            <img src="${pageContext.request.contextPath}/images/earth-globe.svg" alt="">
          </div>
            <li class="main_nav_item"><a href="index?action=axeresults&id=1" style="font-size: 20px;">ORGANISATION DE L'ENSEIGNEMENT</a></li>
          
        </div>


        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
          <div class="icon_container d-flex flex-column justify-content-end">
            <img src="${pageContext.request.contextPath}/images/exam.svg" alt="">
          </div>
          <li class="main_nav_item"><a href="index?action=axeresults&id=2" style="font-size: 20px;">PROCESSUS DE FORMATION</a></li>
        </div>

        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
          <div class="icon_container d-flex flex-column justify-content-end">
            <img src="${pageContext.request.contextPath}/images/books.svg" alt="">
          </div>
          <li class="main_nav_item"><a href="index?action=axeresults&id=3" style="font-size: 20px;">PROGRAMME DE FORMATION</a></li>
        </div>

        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
          <div class="icon_container d-flex flex-column justify-content-end">
            <img src="${pageContext.request.contextPath}/images/professor.svg" alt="">
          </div>
          <li class="main_nav_item"><a href="index?action=axeresults&id=4" style="font-size: 20px;">RESSOURCES HUMAINES</a></li>          
        </div>

        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start" >
          <div class="icon_container d-flex flex-column justify-content-end" >
            <img src="${pageContext.request.contextPath}/images/blackboard.svg" alt="">
          </div>
          <li class="main_nav_item"><a href="index?action=axeresults&id=5" style="font-size: 20px;">RESSOURCES MATERIELLE</a></li>
      
        </div>

        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
          <div class="icon_container d-flex flex-column justify-content-end">
            <img src="${pageContext.request.contextPath}/images/mortarboard.svg" alt="">
          </div>
          <li class="main_nav_item"><a href="index?action=axeresults&id=6" style="font-size: 20px;">RESULTATS</a></li>
          
        </div>
      </div>
    </div>
    <% 
    if(request.getParameterMap().containsKey("id")){%>
    		<% out.print( "<center style=\"margin: 50px;\"> <h3> les statistiques des ecoles sur l'axe " + name + "</h3></center>"); %>
    		<div id="chart-container">
			<canvas id="mycanvas"></canvas>
		</div>
    	<% } %>
  </div>
<jsp:include page="footer.jsp" />

