<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div class="bannerPush"></div>

<div id="banner" class="container-fluid px-0">
    <img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/phone.jpg">
    <div id="bannerText">
        <h1>Kontakt <b>oss</b></h1>    
    </div>
</div>

<div id="topp"></div>

<div id="arrow">
    <a href="#topp" id="arrow"><i class="material-icons">arrow_drop_down</i></a>
</div>

<! –– Hovedtekst ––>
<div id="topText" class="container-fluid px-0">
    <div class="maintextwrapper col-md-9">
        <h2> <B>KONTAKTOPPLYSNINGER</B></h2> 
        <div class="skille"><hr></div>    
    
        <row>    
        <div id="kontakt col-md-8">
            <div class="AS col-md-4">    
                <h3>Barnevernbemanning AS</h3>
                <p>Teievegen 24, Råholt, 2070<br>
                     Tel: +47 400 67 005,</p>
            </div>   
    
            <div class="eriksen col-md-4">    
                <h3>Kjell Inge Eriksen</h3>
                <p>Grunnlegger <br>
                kjell.inge@barnevernbemanning.no</p>
            </div>
        </div>    
        </row> 
  
        <div class="skille"><hr></div>
    
<! –– kontaktskjema ––>    
        <div id="kontaktskjema">
            <?php echo do_shortcode("[ninja_form id=2]");  ?>
        </div>
    </div> 
    
</div>

<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>