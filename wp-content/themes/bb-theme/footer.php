
</div> <!-- /container -->

<?php wp_footer(); ?>

<div id="footer">
    <div class="container">
        <div class="row">

            <div id="logofooter" class="col-lg-4">
                <img class="logofooter" src="/barnevernbemanning/wp-content/themes/bb-theme/img/transparentsmallwhite.png">
            </div>     
    
            <div id="kontaktfooter" class="col-lg-4 col-md-offset-2" >
                <h4>Kontaktinfo</h4>
                <hr>
                <p><i class="material-icons">work</i>Org.nr.: 999999999</p>
                <p><i class="material-icons">phone</i><a href="tel:+47-400-67-005">+47 400 67 005</a></p>
                <p><i class="material-icons">email</i><a href="mailto:post@barnevernbemanning.no">post@barnevernbemanning.no</a></p>
                <p><i class="material-icons">copyright</i>Barnevernbemanning AS 2022</p>
            </div>  

            <div id="footermenu" class="col-lg-2">
                <h4>Snarveier</h4>
                <hr>
                <ul class="menufooter">
                    <li><a href="/barnevernbemanning/hjem">Hjem</a></li>
                    <li><a href="/barnevernbemanning/tjenester">Tjenester</a></li>
                    <li><a href="/barnevernbemanning/konsulenter">Konsulenter</a></li>
                    <li><a href="/barnevernbemanning/om-oss">Om oss</a></li>
                    <li><a href="/barnevernbemanning/kontakt">Kontakt</a></li>
                </ul>    
            </div>
            
        </div>
    </div>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- script til mobilmeny -->
<script>
 function showIntutisjon() {
    document.getElementById('fosterhjem').style.display = "none";
    document.getElementById('saksbehandling').style.display = "none";
    document.getElementById('tilsynfoering').style.display = "none";
    document.getElementById('intitusjon').style.display = "block";
    document.getElementById('tiltak').style.display = "none";
    document.getElementById('ettervern').style.display = "none";
}
    
function showTiltak() {
    document.getElementById('fosterhjem').style.display = "none";
    document.getElementById('saksbehandling').style.display = "none";
    document.getElementById('tilsynfoering').style.display = "none";
    document.getElementById('tiltak').style.display = "block";
    document.getElementById('intitusjon').style.display = "none";
    document.getElementById('ettervern').style.display = "none";
    
}    
    
function showEtterVern() {
    document.getElementById('fosterhjem').style.display = "none";
    document.getElementById('saksbehandling').style.display = "none";
    document.getElementById('tilsynfoering').style.display = "none";
    document.getElementById('ettervern').style.display = "block";
    document.getElementById('intitusjon').style.display = "none";
    document.getElementById('tiltak').style.display = "none";
}
    
function showFosterHjem() {
    document.getElementById('fosterhjem').style.display = "block";
    document.getElementById('saksbehandling').style.display = "none";
    document.getElementById('tilsynfoering').style.display = "none";
    document.getElementById('ettervern').style.display = "none";
    document.getElementById('intitusjon').style.display = "none";
    document.getElementById('tiltak').style.display = "none"
}    

function showTilsyn() {
    document.getElementById('fosterhjem').style.display = "none";
    document.getElementById('saksbehandling').style.display = "none";
    document.getElementById('tilsynfoering').style.display = "block";
    document.getElementById('ettervern').style.display = "none";
    document.getElementById('intitusjon').style.display = "none";
    document.getElementById('tiltak').style.display = "none"
} 
    
function showSaksBehandling() {
    document.getElementById('fosterhjem').style.display = "none";
    document.getElementById('saksbehandling').style.display = "block";
    document.getElementById('tilsynfoering').style.display = "none";
    document.getElementById('ettervern').style.display = "none";
    document.getElementById('intitusjon').style.display = "none";
    document.getElementById('tiltak').style.display = "none"
}   
    
function lukkDiv() {
    document.getElementById('fosterhjem').style.display = "none";
    document.getElementById('saksbehandling').style.display = "none";
    document.getElementById('tilsynfoering').style.display = "none";
    document.getElementById('ettervern').style.display = "none";
    document.getElementById('intitusjon').style.display = "none";
    document.getElementById('tiltak').style.display = "none"
}              
        
$("#menuOpen").click(function(e){
    e.preventDefault();
    $("#menuMobile").show();
    $(this).hide();
    $("#menuClose").show();
});


$("#menuClose").click(function(e){
    e.preventDefault();
    $("#menuMobile").hide();
    $(this).hide();
    $("#menuOpen").show();
});
        


function myFunction() {
  var dots = document.getElementById("dots");
  var moreText = document.getElementById("mer");
  var btnText = document.getElementById("lesMer");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Les mer";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Les mindre";
    moreText.style.display = "inline";
  }
}

 $(function() {
    $('.scroll-down').click (function() {
      $('html, body').animate({scrollTop: $('section.ok').offset().top }, 'slow');
      return false;
    });
  });        

      
</script>        


</body>
</html>