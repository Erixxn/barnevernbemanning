<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div class="bannerPush"></div>

<div id="banner" class="container-fluid px-0">
    <img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/tjenester.jpg">
    <div id="bannerText">
    <h1>Våre <b>tjenester</b></h1>    
    </div>
</div>

<div id="topp"></div>

<div id="arrow">
    <a href="#topp" id="arrow"><i class="material-icons">arrow_drop_down</i></a>
</div>

<! –– Ikoner ––>
<div id="tjenester">

    <div class="tjenesterIcons row g-0">
        <h3> <b>Konsulentene utfører følgende arbeidsoppgaver som omfavner Lov om barneverntjenester:</b> </h3>      
    
        <div class="col-md-2">
            <p> Saksbehandling </p>    
            <i class="material-icons">folder</i>
        </div>
            
        <div class="col-md-2">
            <p> Tiltaksarbeid </p> 
            <i class="material-icons">chat_bubble_outline</i>
        </div>
    
        <div class="col-md-2">
            <p> Oppfølging av fosterhjem </p> 
            <i class="material-icons">home</i>
        </div>    
    </div>


    <div class="tjenesterIcons row g-0">
    
        <div class="col-md-2">
            <p> Ettervern </p>     
            <i class="material-icons">forward</i>
        </div>
            
        <div class="col-md-2">
            <p> Diverse tilsynsføreroppdrag </p> 
            <i class="material-icons">hearing</i>
        </div>
    
        <div class="col-md-2">
            <p> Oppfølging av instutisjoner </p> 
            <i class="material-icons">hotel</i>
        </div>      
    </div>

</div>

<! –– Hovedtekst ––>
<div id="maintextTjenester" class="container-fluid px-0">
    <div class="maintextwrapper">

        <p>Alle våre konsulenter har mange års erfaring fra kommunal saksbehandling og kan bistå med  saksbehandling og tiltak innenfor alle oppgaver som er hjemlet i Lov om Barneverntjenester. Oppgavene vil bli utført innenfor de rammene som myndighetene har gitt de private aktørene og som ikke faller innenfor utøvelsen av offentlig myndighet.</p>

        <p>Våre konsulenter er bosatt i flere landsdeler og er fleksible med tanke på arbeidssted og arbeidsoppgaver.
        Alle våre konsulenter har lang erfaring i bruk av fagprogrammet Familia.</p>
 
        <p>Vi vil strekke oss langt for å finne en konsulent som kan bistå dere med kompetanse og erfaring. </p> 
    </div>
    
</div>

<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>