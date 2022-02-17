<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div id="banner" class="container-fluid px-0">
<div class="row">
<img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/phone.png">
<div id="bannerText">
<h1>Kontakt <b>oss</b></h1>    
</div>
</div>
</div>

<div id="maintext" class="container-fluid px-0">
<div class="maintextwrapper">
    
<h2> <b>Kontaktopplysninger</b></h2> 
  
<div id="kontakt">
    
<div class="AS">    
    <h3>Barnevernbemanning AS</h3>
    <p>    Teievegen 24, Råholt, 2070<br>
     Tel: +47 400 67 005,</p>
    
</div>   
    
<div class="eriksen">    
    <h3>Kjell Inge Eriksen</h3>
    <p>Grunnlegger <br>
    kjell.inge@barnevernbemanning.no</p>
    
</div>


</div>    
  
<hr>
<div id="kontaktskjema">
<h2> <b>Kontaktskjema</b></h2> 
<?php echo do_shortcode("[ninja_form id=2]");  ?>
</div>
</div>  
</div>






<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>