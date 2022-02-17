<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div id="banner" class="container-fluid px-0">
<div class="row">
<img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/permorg.jpg">
<div id="bannerText">
<h1>Våre <b>tjenester</b></h1>    
</div>
</div>
</div>

<div id="maintext" class="container-fluid px-0">
<div class="maintextwrapper">

<h2> <b>Saksbehandling</b> </h2>    

<p>Alle våre konsulenter har mange års erfaring fra kommunal saksbehandling og kan bistå med saksbehandling og tiltak innenfor alle oppgaver som er hjemlet i Lov om Barneverntjenester. 
 
Oppgavene vil bli utført innenfor de rammene som myndighetene har gitt de private aktørene og som ikke faller innenfor utøvelsen av offentlig myndighet.</p>
 
<p>Våre konsulenter er bosatt i flere landsdeler og er fleksible med tanke på arbeidssted og arbeidsoppgaver. </p>

<p>Konsulentene utfører følgende arbeidsoppgaver som omfavner Lov om barneverntjenester: </p>

<p>
<ul><li>Saksbehandling</li></ul>
<ul><li>Tiltaksarbeid</li></ul>
<ul><li>Oppfølging av fosterhjem og institusjoner</li></ul>
<ul><li>Ettervern </li></ul>
<ul><li>Ulike tilsynsføreroppdrag</li></ul> 
</p>

<p>Alle våre konsulenter har lang erfaring i bruk av fagprogrammet Familia. 
 
<p>Vi vil strekke oss langt for å finne en konsulent som kan bistå dere med kompetanse og erfaring. </p> 
    
</div>
    
</div>






<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>