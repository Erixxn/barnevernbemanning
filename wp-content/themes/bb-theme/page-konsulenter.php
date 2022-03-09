<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php the_content(); ?>

<div class="bannerPush"></div>

<div id="banner" class="container-fluid px-0">
    <img class="banner" src="/barnevernbemanning/wp-content/themes/bb-theme/img/teamw.jpg">
    <div id="bannerText">
        <h1>Våre <b>konsulenter</b></h1>    
    </div>
</div>

<div id="topp"></div>

<div id="arrow">
    <a href="#topp" id="arrow"><i class="material-icons">arrow_drop_down</i></a>
</div>

<! –– Hovedtekst ––>
<div id="toptext" class="container-fluid px-0">
 
    <div class="maintextwrapper col-md-9">

        <h2> <b>BARNEVERNSKONSULENTER</b>   </h2>    

        <div class="skille"><hr></div>    
    
        <p>Våre konsulenter er bosatt i flere landsdeler og er fleksible ved utøvelse av arbeidsoppgaver og arbeidssted. Vi strekker oss langt for å tilby din kommune kvalifisert personell som kan bistå dere i en kortere eller lengre periode. Vi setter yrkesstoltheten i høysetet, vi er svært opptatt av stabilitet og kontinuitet i tjenestene vi leverer til våre kunder. Alle våre konsulenter innehar mange års erfaring fra kommunalt barnevernsarbeid.</p>
        
        <div class="skille"><hr></div>
        
    </div>

</div>


<! –– Konsulenter Desktop ––>
<div id="konsulent" class="container">    
    <div id="konsulentParent">

        <div class="konsulent1 row">
            <div class="konsulentBildeWrapper col-md-5">    
                <div class="konsulentBildeContainer col-md-5"> 
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
    
            <div class="konsulentTekstWrapper col-md-7">    
                <p>Kjell Inge har arbeidet i barneverntjenesten siden 1992. Først som kommunalt ansatt i 10 år, og siden 2003 som utleid konsulent, først fra eget firma, og deretter som utleid konsulent fra ulike vikarbyråer innenfor barnevernfeltet. Det er gjennom den lange erfaringen Kjell Inge fikk ideen om å lage et nettverk av erfarne konsulenter, som har som mål å tilby kommunale barneverntjenester god barnevernfaglig bistand til en lavere kostnad enn det vikarbyråene klarer. </p>

                <p>Kjell Inge er sosionom med videreutdanning i barne- og ungdomsvern. Kjell Inge har allsidig arbeidserfaring innenfor barnevernsfeltet, og har også vært beredskapshjem i 1 år og fosterhjem i 10 år. Kjell Inge har fra 2003 til dags dato hatt oppdrag som konsulent for omkring 40 ulike kommuner, og gjentatte ganger i flere av kommunene.  </p>

                <p>Kjell Inge har mye erfaring med alle typer saker i barnevernet som undersøkelsessaker, veiledning og andre tiltakssaker, samt oppfølging av barn under barnevernets omsorg, både i fosterhjem, institusjon og på ettervern. Før 2018 forberedte og representerte Kjell Inge kommunale barneverntjenester med mange saker for fylkesnemnd, tingrett og lagmannsrett. </p>
            </div>
        </div>

    </div>    
</div>

<! –– Konsulenter Mobile ––>
<div id="konsulentMobile" class="container">    
    <div id="konsulentParentMobile">


        <div class="konsulentBildeWrapper col-md-5">    
            <div class="konsulentBildeContainer col-md-5"> 
                <span class="circle-image">
                    <img src="/barnevernbemanning/wp-content/themes/bb-theme/img/kjell.jpg" alt="Files">
                </span>
            </div>    
        </div>   

        <div id="infoMobile">  
            <h3>Kjell Inge Eriksen</h3>
            <p>Sosionom<br>
            +47 400 67 005<br>
            kjell.inge@barnevernbemanning.no<br>
            CV gis ved forespørsel</p>
        </div>   
    
        <div class="konsulentTekstWrapperMobile"> 
    
            <p>Kjell Inge har arbeidet i barneverntjenesten siden 1992. Først som kommunalt ansatt i 10 år, og siden 2003 som utleid konsulent, først fra eget firma, og deretter som utleid konsulent fra ulike vikarbyråer innenfor barnevernfeltet. Det er gjennom den lange erfaringen Kjell Inge fikk ideen om å lage et nettverk av erfarne konsulenter, som har som mål å tilby kommunale barneverntjenester god barnevernfaglig bistand til en lavere kostnad enn det vikarbyråene klarer. </p>

             <p>Kjell Inge er sosionom med videreutdanning i barne- og ungdomsvern. Kjell Inge har allsidig arbeidserfaring innenfor barnevernsfeltet, og har også vært beredskapshjem i 1 år og fosterhjem i 10 år. Kjell Inge har fra 2003 til dags dato hatt oppdrag som konsulent for omkring 40 ulike kommuner, og gjentatte ganger i flere av kommunene.  </p>

            <p>Kjell Inge har mye erfaring med alle typer saker i barnevernet som undersøkelsessaker, veiledning og andre tiltakssaker, samt oppfølging av barn under barnevernets omsorg, både i fosterhjem, institusjon og på ettervern. Før 2018 forberedte og representerte Kjell Inge kommunale barneverntjenester med mange saker for fylkesnemnd, tingrett og lagmannsrett.  </p>
        </div>

    </div>    
</div>


<?php endwhile; else: ?>
	<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>