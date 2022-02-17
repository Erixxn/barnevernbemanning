<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div id="banner" class="container-fluid px-0">
<div class="row">
<img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/loveedit.png">
<div id="bannerText">
<h1>Velkommen til <b>Barnevernbemanning</b></h1>    
</div>
</div>
</div>

<div id="maintext" class="container-fluid px-0">
<div class="maintextwrapper">

<h2><b> På utkikk etter en barnervernskonsulent?</b> </h2>    

<p>Barnevernbemanning bistår kommunale barneverntjenester med dyktige konsulenter i perioder med lavere kapasitet grunnet sykefravær, oppsagte stillinger m.m. Vi bistår med god saksbehandling for å sikre at barn og unge får rett hjelp til rett tid, og at de gjeldene fristene overholdes. </p>

<p>Konsulentene hos Barnevernbemanning innehar omfattende kompetanse og erfaring i faget. Vi er en slank organisasjon og vil kunne tilby din kommune konkurransedyktige priser. </p>
<div id="frontLink"><li><u><a href="/barnevernbemanning/om-oss">Les mer om oss her</a></u></li></div>
</div>
    
</div>


<div id="homeArticleLight" class="container-fluid px-0">   
<div id="articleParentLight">
    
<div class="bildeWrapper">    
    <div class="bildeContainer"> 
        <img src="/barnevernbemanning/wp-content/themes/bb-theme/img/files.jpg" alt="Files">
        <button class="knapp">Våre tjenester</button>
    </div>    
</div>   
    
<div class="tekstWrapper">    
    <h3>Hva kan vi tilby din kommune?<br></h3>
    <p>Vi kan bistå din kommune i alle barnevernsaker enten dere trenger rådgivning eller en saksbehandler. For en detaljert oversikt over hvilke tjenester vi har erfaring med og kompetanse til kan du gå til undersiden “Våre tjenester”</p>
</div>


</div>    
</div>

<div id="homeArticleDark" class="container-fluid px-0">    
<div id="articleParentDark">
    
<div class="bildeWrapper">    
    <div class="bildeContainer"> 
        <img src="/barnevernbemanning/wp-content/themes/bb-theme/img/konsulenter.jpg" alt="Konsulenter">
        <button class="knapp">Konsulenter</button>
    </div>    
</div>   
    
<div class="tekstWrapper">    
    <h3>Hvem er våre ansatte?<br></h3>
    <p>Vi er stolte av våre ansatte! Vi har erfaring med alle sider av barnevernsarbeid fra saksbandling til føring av saker i rettsystemet.  For å bli bedre kjent med våre dyktige barnevernskonsulenter kan du lese om de på siden “Konsulenter”</p>
</div>


</div>    
</div>

<div id="homeArticleLight" class="container-fluid px-0">    
<div id="articleParentLight">
    
<div class="bildeWrapper">    
    <div class="bildeContainer"> 
        <img src="/barnevernbemanning/wp-content/themes/bb-theme/img/bamse.jpg" alt="Bamse">
        <button class="knapp">Om oss</button>
    </div>    
</div>   
    
<div class="tekstWrapper">    
    <h3>Hvorfor Barnevernbemanning?<br></h3>
    <p>Barnevernbemanning er nyetablert og består av mange selvstendige konsulenter som har inngått et partnerskap. Vårt mål er at vi skal bli din kommunes foretrukne partner. For å oppnå dette er vår visjon å tilby dere erfarne barnevernskonsulenter til markedets beste priser. For å lære mer om Barnevernbemanning kan du navigere til siden "Om oss"  </p>
</div>


</div>    
</div>

<div id="homeArticleDark" class="container-fluid px-0">    
<div id="articleParentDark">
    
<div class="bildeWrapper">    
    <div class="bildeContainer"> 
        <img src="/barnevernbemanning/wp-content/themes/bb-theme/img/tlf.jpg" alt="TLF">
        <button class="knapp">Kontakt oss</button>
    </div>    
</div>   
    
<div class="tekstWrapper">    
    <h3>Hvordan kontakter jeg Barnevernbemanning?<br></h3>
    <p>Om din kommune trenger hjelp fra oss til saksbehandling av barnevernssaker ser vi frem til å høre fra dere for å gi dere ett godt tilbud! For kontaktopplysninger og kontaktskjema kan du gå til siden "Kontakt"  </p>
</div>


</div>    
</div>




<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>