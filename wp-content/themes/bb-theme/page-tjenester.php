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


<a href="#hit" class="scroll-down" address="true"></a>


<! –– Ikoner ––>
<div id="hit"></div>
<div id="tjenester">
    <h3> <b>Konsulentene utfører følgende arbeidsoppgaver som omfavner Lov om barneverntjenester:</b> </h3>
    <div class="tjenesterIcons row g-0">
                  
    
        <div class="tjeneste col-md-2">
            <p> Saksbehandling </p>
            <button class="circle" onclick="showSaksBehandling()">
                <i class="topp material-icons">folder</i>
            </button>
            
            <div id="popup">
                <div id="saksbehandling" style="display:none;" > 
                    <button id="bg" onclick="lukkDiv()"></button>  
                    <div id="popupWrapper">
                        <h3>Saksbehandling</h3>
                        <p>Saksbehandlingen skal være betryggende, rask og tillitsskapende. <br> Det er viktig at saksbehandlingen oppfyller grunnleggende krav til rettssikkerhet og at ressursbruken er tilpasset tiltaket      og sakens art, omfang og vanskelighetsgrad. </p>
                        <p>Saksbehandlingen skal legge til rette for at barneverntjenesten fatter riktige avgjørelser til rett tid, og for at barn og foreldres rettigheter ivaretas på en god måte. </p>
                        <p>Våre konsulenter har lang erfaring med alle sider av saksbehandling. </p>
                        <button class="lKnapp" onclick="lukkDiv()">Lukk</button> 
                    </div>
                </div>
            </div>
        </div>    
 
        <div class="tjeneste col-md-2">
            <p> Tilsynsføreroppdrag </p> 
            <button class="circle" onclick="showTilsyn()">
                <i class="topp material-icons">people</i>
            </button>
            
            <div id="popup">
                <div id="tilsynfoering" style="display:none;" > 
                    <button id="bg" onclick="lukkDiv()"></button>
                    <div id="popupWrapper">
                        <h3>Tilsynsføring</h3>
                        <p>En tilsynsfører har som formål å sikre at barnet blir godt ivaretatt. Tilsynsfører har som sin ene viktige oppgave – uavhengig av særlige interesser barneverntjeneste, fosterforeldre og foreldre    måtte ha – å følge med og gjøre seg opp en mening om hvorvidt barnet blir tilfredsstillende ivaretatt.</p>
                        <p>Som sin andre viktige oppgave har tilsynsfører ansvar for å sørge for at barnets erfaringer og oppfatninger fanges opp og formidles til barnverntjenesten.</p>
                        <p>Våre konsulenter har lang erfaring med denne typen arbeid</p>
                        <button class="lKnapp" onclick="lukkDiv()">Lukk</button>  
                    </div>
                </div>
            </div>
        </div>
    
        <div class="tjeneste col-md-2">
            <p> Oppfølging fosterhjem </p> 
            <button class="circle" onclick="showFosterHjem()">
                <i class="topp material-icons">home</i>
            </button>
            
            <div id="popup">
                <div id="fosterhjem" style="display:none;" >
                    <button id="bg" onclick="lukkDiv()"></button>
                    <div id="popupWrapper">
                        <h3>Oppfølging av fosterhjem</h3>
                        <p>Barneverntjenesten har et oppfølgingsansvar for barn og foreldre når barn eller ungdom er plassert i fosterhjem.</p>
                        <p>Våre konsulenter har bred erfaring med slik oppfølging.</p>
                        <button class="lKnapp" onclick="lukkDiv()">Lukk</button> 
                    </div>
                </div>
            </div>    
        </div>
    </div>
     

    <div class="tjenesterIcons row g-0">
    
        <div class="tjeneste col-md-2">
            <p> Ettervern </p>     
            <button class="circle" onclick="showEtterVern()">
                <i class="topp material-icons">school</i>
            </button>
            
            <div id="popup">
                <div id="ettervern" style="display:none;" > 
                    <button id="bg" onclick="lukkDiv()"></button>
                    <div id="popupWrapper">
                        <h3>Ettervern</h3>
                        <p>Når klienten har fylt 18 år er kommunen pliktig å sikre godt ettervern.</p>
                        <p> Dette er noe våre konsulenter har mye erfaring med.</p>
                        <button class="lKnapp" onclick="lukkDiv()">Lukk</button>  
                    </div>
                </div>
            </div>
        </div>
         
        <div class="tjeneste col-md-2">
            <p> Tiltaksarbeid </p> 
            <button class="circle" onclick="showTiltak()">
                <i class="forminsk material-icons">chat_bubble</i>
            </button>
            
            <div id="popup">
                <div id="tiltak" style="display:none;" > 
                    <button id="bg" onclick="lukkDiv()"></button>
                    <div id="popupWrapper">
                        <h3>Tiltaksarbeid</h3>
                        <p>Det må være en sammenheng mellom de behov som skal imøtekommes og de tiltak som settes i verk.</p>
                        <p><b>Det er viktig at tiltakene er:</b><br>
                           ”behovsstyrt”: valgt ut fra klientens behov, heller enn <br>
                           ”tilbudsstyrt”: valgt ut fra hvilke tiltak som er lett tilgjengelige og vanlige.</p>
                        <p>Våre konsulenter har mye kunnskap og erfaring med tiltaksarbeid.</p>
                        </p>
                        <button class="lKnapp" onclick="lukkDiv()">Lukk</button>  
                    </div>
                </div>
            </div>
        </div>
    
        <div class="tjeneste col-md-2">
            <p> Oppfølging instutisjoner </p> 
            <button class="circle" onclick="showIntutisjon()"> 
                <i class="topp material-icons">hotel</i>
            </button>  
            
            <div id="popup">
                <div id="intitusjon" style="display:none;" > 
                    <button id="bg" onclick="lukkDiv()"></button>
                    <div id="popupWrapper">
                        <h3>Oppfølging av institusjon</h3>
                        <p>Barneverntjenesten har et oppfølgingsansvar for barn og foreldre når barn eller ungdom er plassert i intitusjon.</p>
                        <p>Våre konsulenter har bred erfaring med slik oppfølging.</p>
                        <button class="lKnapp" onclick="lukkDiv()">Lukk</button>  
                    </div>
                </div>
            </div>
        </div>
       
        

    </div>  
</div>

<! –– Hovedtekst ––>
<div id="maintextTjenester" class="container-fluid px-0">
    <div class="maintextwrapper">
        
        <h2> <b>TJENESTER</b>   </h2>

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