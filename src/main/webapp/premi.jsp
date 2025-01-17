<%--
  Created by IntelliJ IDEA.
  User: benedettosimone
  Date: 14/06/21
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="UTF-8">
<title>Premi</title>
<link rel="stylesheet" href="css/premi.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<script type="text/javascript" src="js/dark.js"></script>
<script src="js/cookie.js"></script>
<body id="body" class="light-mode">

<div class="row">

    <div id="navbar">
        <%@include file="navbar.jsp"%>
    </div>

    <div id="navbar_responsive">
        <%@include file="navbar-resp.jsp"%>
    </div>


    <div id="content">
        <div class="background-content">
            <h1>Premi</h1>
            <div id="premi-content">
                <div class="scroll-bar">
                    <div class="row-premi">
                        <div class="column-premi">
                            <div class="card-premi">
                                <div class="center">
                                <div class="resume-left">
                                    <h3>chilometri ridotti</h3>
                                    <p>Medaglie ottenute</p>
                                    <div class="resume-icon">
                                        <div class="bronzo">
                                            <img src="img/resumeBronzo.png">
                                            <span>0</span>
                                        </div>

                                        <div class="argento">
                                            <img src="img/resumeSilver.png">
                                            <span>1</span>
                                        </div>

                                        <div class="oro">
                                            <img src="img/resumeGold.png">
                                            <span>2</span>
                                        </div>
                                    </div>
                                </div>
                                <img class="category-resume0" src="img/sprout.svg">
                                </div>
                            </div>
                        </div>

                        <div class="column-premi">
                            <div class="card-premi">
                                <div class="center">
                                    <div class="resume-left">
                                    <h3>Dispendio carburante</h3>
                                    <p>Medaglie ottenute</p>
                                    <div class="resume-icon">
                                        <div class="bronzo">
                                            <img src="img/resumeBronzo.png">
                                            <span>2</span>
                                        </div>

                                        <div class="argento">
                                            <img src="img/resumeSilver.png">
                                            <span>1</span>
                                        </div>

                                        <div class="oro">
                                            <img src="img/resumeGold.png">
                                            <span>1</span>
                                        </div>
                                    </div>
                                </div>
                                    <img class="category-resume1" src="img/money-bag.svg">
                            </div>
                            </div>

                        </div>

                        <div class="column-premi">
                            <div class="card-premi">
                                <div class="center">
                                <div class="resume-left">
                                    <h3>Utilizzo mezzi eco</h3>
                                    <p>Medaglie ottenute</p>
                                    <div class="resume-icon">
                                        <div class="bronzo">
                                            <img src="img/resumeBronzo.png">
                                            <span>0</span>
                                        </div>

                                        <div class="argento">
                                            <img src="img/resumeSilver.png">
                                            <span>0</span>
                                        </div>

                                        <div class="oro">
                                            <img src="img/resumeGold.png">
                                            <span>1</span>
                                        </div>
                                    </div>
                                </div>
                                <img class="category-resume2" src="img/eco-fuel.svg">
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="medal-content">

                <h5>Chilometri ridotti</h5>

                <div class="scroll-bar1">
                    <div class="row-medal">
                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/kmBronzo.png">
                                </div>
                                <div class="info-medal">
                                <h3>Bronzo</h3>
                                <p>Riduzione del 10% dei chilometri percorsi rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>

                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/no-ecoMedal.png">
                                </div>
                                <div class="info-medal">
                                <h3>Argento</h3>
                                <p>Riduzione del 25% dei chilometri percorsi rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>

                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/no-ecoMedal.png">
                                </div>
                                <div class="info-medal">
                                <h3>Oro</h3>
                                <p>Riduzione del 50% dei chilometri percorsi rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

                <h5>Dispendio carburante diminuito</h5>

                <div class="scroll-bar1">
                    <div class="row-medal">
                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/no-speseMedal.png">
                                </div>
                                <div class="info-medal">
                                <h3>Bronzo</h3>
                                <p>Riduzione del 10% della spesa carburante rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>

                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/no-speseMedal.png">
                                </div>
                                <div class="info-medal">
                                <h3>Argento</h3>
                                <p>Riduzione del 25% della spesa carburante rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>

                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/speseOro.png">
                                </div>
                                <div class="info-medal">
                                <h3>Oro</h3>
                                <p>Riduzione del 50% della spesa carburante rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

                <h5>Utilizzo mezzi ecosostenibili</h5>
                <div class="scroll-bar1">
                    <div class="row-medal">
                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/no-carbMedal.png">
                                </div>
                                <div class="info-medal">
                                <h3>Bronzo</h3>
                                <p>Aumento del 10% l’utilizzo dei mezzi ecosostenibili rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>

                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/carbArgento.png">
                                </div>
                                <div class="info-medal">
                                <h3>Argento</h3>
                                <p>Aumento del 25% l’utilizzo dei mezzi ecosostenibili rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>

                        <div class="column-medal">
                            <div class="card-medal">
                                <div class="medal">
                                    <img src="img/no-carbMedal.png">
                                </div>
                                <div class="info-medal">
                                <h3>Oro</h3>
                                <p>Aumento del 50% l’utilizzo dei mezzi ecosostenibili rispetto al mese scorso</p>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script>
window.onload=function darkuno(){
    var body = document.getElementById("body");
    let name = "darkmode=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for(let i = 0; i <ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            // alert(c.substring(name.length, c.length)+" cookie recuperato");

            body.className="dark-mode";
            document.getElementById('darkswitch').setAttribute("checked",true);
            document.getElementById('darkswitchD').setAttribute("checked",true);

            return;
        }
    }

    // alert("cookie non recuperato");
    body.className="light-mode";




    }
</script>


</body>
</html>