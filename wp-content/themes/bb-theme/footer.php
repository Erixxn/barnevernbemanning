
    </div> <!-- /container -->

    <?php wp_footer(); ?>
<div id="footer">
<div class="container">

<div class="row">

<div id="logofooter" class="col-md-4">
<img class="logofooter" src="/barnevernbemanning/wp-content/themes/bb-theme/img/transparentsmallwhite.png">
</div>     
    
<div id="kontaktfooter" class="col-md-4 col-md-offset-2" >
<h4>Kontaktinfo</h4>
<hr>
<p class="kontaktfooter">Barnevernbemanning AS  © 2022 <br>
Org.nr.: 999999999 <br>
post@barnevernbemanning.no <br>
Tlf. 40067005
</p>  
</div>  

<div id="footermenu" class="col-md-2">
<h4>Snarveier</h4>
<hr>
<ul class="menufooter">
<li><a href="/barnevernbemanning/hjem">Hjem</a></li>
<li><a href="/barnevernbemanning/tjenester">Tjenester</a></li>
<li><a href="/barnevernbemanning/konsulenter">Konsulenter</a></li>
<li><a href="/barnevernbemanning/omoss">Om oss</a></li>
<li><a href="/barnevernbemanning/kontakt">Kontakt</a></li>
</ul>    


</div>  
</div>
</div>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- script til mobilmeny -->
    <script>
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
</script>

  </body>
</html>