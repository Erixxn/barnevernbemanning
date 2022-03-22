<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div class="bannerPush"></div>

<div id="banner" class="container-fluid px-0">
    <img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/bear.jpg">
    <div id="bannerText">
        <h1>Om <b>oss</b></h1>    
    </div>
</div>

<div id="topp"></div>


<a href="#hit" class="scroll-down" address="true"></a>


<! –– Hovedtekst ––>
<div id="hit"></div>
<div id="maintext" class="container-fluid px-0">

    <div class="maintextwrapper col-md-9">

        <h2> <b>OM OSS</b> </h2> 
    
        <div class="skille"><hr></div>

        <p>Barnevernbemannings visjon er å bistå kommunale barneverntjenester med konsulenttjenester, slik at tjenesten i så stor grad som mulig klarer å innfri barnevernlovens formål, som er å: </p>
        <p><i>“sikre at barn og unge som lever under forhold som kan skade deres helse og utvikling, får nødvendig hjelp, omsorg og beskyttelse til rett tid. “</i></p>

        <p>Barnevernbemanning er et partnerskap av barnevernkonsulenter med god kompetanse og mye erfaring fra kommunal barneverntjeneste. Våre konsulenter kan komme til dere og arbeide for dere i perioder der dere selv mangler kapasitet i tjenesten.  </p>
 
        <p>Akkurat som i lovens formål er våre konsulenter opptatt av at:</p>
 
        <p><i>“Barn og unge møtes med trygghet, kjærlighet og forståelse, og at alle barn og unge får gode og trygge oppvekstsvilkår.”</i> </p>
 
        <p>Alle våre konsulenter vil tilstrebe godt samarbeid med de fast ansatte, arbeide etter prinsippene om å være tilgjengelige, være faglig og juridisk oppdaterte, overholde lovens tidsfrister samt følge kontorets interne rutiner. </p>
        
        <div class="hand">
            <img src="/barnevernbemanning/wp-content/themes/bb-theme/img/kunHandS.png">
        </div>

    </div>

    
</div>

<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>