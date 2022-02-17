<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div id="banner" class="container-fluid px-0">
<div class="row">
<img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/bear.png">
<div id="bannerText">
<h1>Om <b>oss</b></h1>    
</div>
</div>
</div>

<div id="maintext" class="container-fluid px-0">
<div class="maintextwrapper">

<h2> <b>Om oss</b> </h2>    

<p>Barnevernbemannings visjon er å bistå kommunale barneverntjenester med konsulenttjenester, slik at tjenesten i så stor grad som mulig klarer å innfri barnevernlovens formål, som er å: </p>
<p><i>“sikre at barn og unge som lever under forhold som kan skade deres helse og utvikling, får nødvendig hjelp, omsorg og beskyttelse til rett tid. “</i></p>

<p>Barnevernbemanning er et partnerskap av barnevernkonsulenter med god kompetanse og mye erfaring fra kommunal barneverntjeneste. Våre konsulenter kan komme til dere og arbeide for dere i perioder der dere selv mangler kapasitet i tjenesten.  </p>
 
<p>Akkurat som i lovens formål er våre konsulenter opptatt av at:</p>
 
<div id="tekstBg"><p><i>“Barn og unge møtes med trygghet, kjærlighet og forståelse, og at alle barn og unge får gode og trygge oppvekstsvilkår.”</i> </p></div>
 
<p>Alle våre konsulenter vil tilstrebe godt samarbeid med de fast ansatte, arbeide etter prinsippene om å være tilgjengelige, være faglig og juridisk oppdaterte, overholde lovens tidsfrister samt følge kontorets interne rutiner. </p>

</div>
    
</div>






<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>