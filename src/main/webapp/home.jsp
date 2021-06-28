<%@ page import="java.util.List" %>
<%@ page import="com.example.eco_mobility.DTO.ObiettiviDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int[] km;
    km= (int[]) request.getAttribute("kmSettimanali");
    int mediaKm = (int) request.getAttribute("mediaSet");
    if(km==null){
        response.sendRedirect("./SpostamentiControl");
    }


    List<ObiettiviDTO> obiettiviInCorso= (List<ObiettiviDTO>) request.getSession().getAttribute("obiettiviInCorso");

%>
<!DOCTYPE html>
<html lang="en" xmlns="">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="css/home.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../contrast-bootstrap-pro/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../contrast-bootstrap-pro/css/cdb.css"/>
    <script src="../contrast-bootstrap-pro/js/cdb.js"></script>
    <script src="../contrast-bootstrap-pro/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/9d1d9a82d2.js" crossorigin="anonymous"></script>
</head>
<body>



<div class="row">

    <div id="navbar">
        <%@include file="navbar.jsp"%>
    </div>

    <div id="navbar_responsive">
        <%@include file="navbar-resp.jsp"%>
    </div>

    <div id="content">
        <div class="background-content">

            <!--Home section banner-->
            <div id="home-card">
                <h1>Home</h1>
                <h3>Bentornato <%=ut.getNome()%></h3>
                <img src="img/home-img.png">
            </div>

            <!--Section obiettivi-->
            <div id="obiettivi-content">

                <h5>Obiettivi in corso</h5>


                    <div class="row-obiettivi">
                        <% if(obiettiviInCorso.isEmpty()==false){

                            for(ObiettiviDTO obb : obiettiviInCorso){
                        %>
                        <div class="column-obiettivi">
                            <div class="card-obiettivi">
                                <h3><%=obb.getTipoObiettivo()%></h3>
                                <p>Status: in corso</p>
                                <p>Descrizione: <%=obb.getObiettivo()%></p>
                                <p></p>
                            </div>
                        </div>
                        <%
                                }
                            }else{
                        %>
                        nessun obiettivo in corso
                        <%
                                }
                        %>
                    </div>
            </div>

            <!--Section chart-->
            <div id="chart-content">

                <div class="row-chart">

                    <div class="column-chart1">

                        <div class="chart-card">

                            <h1>Media chilometri</h1>
                            <h5>Negli ultimi 7 giorni hai percorso in media <%=mediaKm%> km.</h5>

                            <div class="card chart-container">
                                <canvas id="chart"></canvas>
                            </div>

                        </div>

                    </div>

                    <div class="column-chart2">

                        <div class="chart-card">


                            <h1>Media chilometri</h1>
                            <h5>Negli ultimi 7 giorni hai percorso in media 53 km.</h5>

                            <div class="card chart-container">
                                <canvas id="myChart"></canvas>
                            </div>

                        </div>


                    </div>

                </div>

            </div>

        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
<script>


    window.onload=function getDate() {

        //trovo la data corrente (indice)
        const d = new Date();
        const days = ["Lun", "Mar", "Mer", "Gio", "Ven", "Sab", "Dom"];
        //indice giorno corrente
        var final=d.getDay();

        //trovo i nomi giorni
        var array2 = days.slice(0, final);
        var array3 = days.slice(final, 7);

         var array1= array3.concat(array2);

         alert(array1);

    }



    //line chart
    var ctxL = document.getElementById("chart").getContext('2d');
    var myLineChart = new Chart(ctxL, {
        type: 'line',
        data: {
            labels: [array1[6], array1[5], array1[4], array1[3], array1[4], array1[5], array1[6]],
            datasets: [{
                label: 'Km percorsi',
                data: [<%=km[6]%>, <%=km[5]%>, <%=km[4]%>, <%=km[3]%>, <%=km[2]%>, <%=km[1]%>, <%=km[0]%>],
                backgroundColor: [
                    '#F1F6FF',
                ],
                borderColor: [
                    '#5a87e8',
                ],
                borderWidth: 2
            }
            ]
        },
        options: {
            responsive: true
        }
    });



    //bar chart
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["Sab", "Dom", "Lun", "Mar", "Mer", "Gio", "Ven"],
            datasets: [{
                label: 'Media spese',
                data: [seventhDaySp, sixthDaySp , fifthDaySp, fourthDaySp, thirdDaySp, secondDaySp, firstDaySp],
                backgroundColor: '#F1F6FF',
                borderColor: '#5a87e8',

                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>

</body>
</html>