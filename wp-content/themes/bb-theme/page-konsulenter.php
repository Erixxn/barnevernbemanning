<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div id="banner" class="container-fluid px-0">
<div class="row">
<img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/handscolor.png">
<div id="bannerText">
<h1>Våre <b>konsulenter</b></h1>    
</div>
</div>
</div>

<div id="maintext" class="container-fluid px-0">
<div class="maintextwrapper">

<h2> <b>Barnevernskonsulenter</b>   </h2>    

<p>Vårt personale er bosatt i flere landsdeler og er fleksible ved utøvelse av arbeidsoppgaver og arbeidssted.
Vi strekker oss langt for å tilby din kommune kvalifisert personell som kan bistå dere  i en kortere eller lengere periode. 
Vi setter yrkesstoltheten i høysetet, vi er svært opptatt av stabilitet og kontinuitet i tjenestene vi leverer til våre kunder.  Våre konsulenter innehar mange års erfaring fra saksbehandling, ledelse og tiltaksarbeid fra kommunalt barnevernsarbeid.  </p>

<br>
<hr>
    
</div>
</div>

<div id="konsulent" class="container">    
<div id="konsulentParent">
    
<div class="konsulentBildeWrapper">    
    <div class="konsulentBildeContainer"> 
        <span class="circle-image">
        <img src="/barnevernbemanning/wp-content/themes/bb-theme/img/kjell.jpg" alt="Files">
        </span>
        <h3> Kjell Inge Eriksen</h3>
        <p>Sosionom</p>
        <p>kjell.inge@barnevernbemanning.no</p>
         <p>+47 400 67 005</p>
         <p>CV gis ved forespørsel</p>
    </div>    
</div>   
    
<div class="konsulentTekstWrapper">    
    <p>Kjell Inge har arbeidet innen barnevern og sosial siden 1987 og som selvstendig konsulent siden 2012. Han er sosionom med videreutdanning innen barnevern og ledelse. Han har arbeidserfaring fra å være fosterhjem, saksbehandler, barnevernleder/sosialsjef samt fagkonsulent i Bufetat og har hatt oppdrag som konsulent i X kommuner og gjentatte ganger i en del av disse kommunene.</p>

    <p>Han har bred erfaring i forhold til undersøkelsessaker, tiltaksarbeid og oppfølging av barn under barnevernets omsorg, samt å forberede og representere kommuner i saker for fylkesnemnd, tingrett og lagmannsrett. Videre har han erfaring med oppfølging av fosterhjem og gjennomføring av adopsjonssaker. Han har også utarbeidet interkontrollsystem for barneverntjenester. </p>

    <p>Barnevernbemanning ble stiftet av Kjell Inge i 2022.</p>
</div>


</div>    
</div>






<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>