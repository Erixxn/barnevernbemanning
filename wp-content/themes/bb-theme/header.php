 <head>
    <meta charset="utf-8">
    <title><?php wp_title('|',1,'right'); ?> <?php bloginfo('name'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Le styles -->
    <link href="<?php bloginfo('stylesheet_url');?>" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <?php wp_enqueue_script("jquery"); ?>
    <?php wp_head(); ?>
  </head>

<body>

<div id="bgheader" class="container-fluid">
    <div class="header-container"> 
        <div class="row">
            <div class="col-3">
                <a href="/barnevernbemanning"><img class="logo" src="/barnevernbemanning/wp-content/themes/bb-theme/img/logoroed.png"></a>           
            </div>

    <!-- Desktop -->
            <div class="col-6" id="menuheader">
                <nav class="desktop navbar navbar-default">    
                <?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?>
                </nav>   
    
                <a href="#" id="menuOpen"><i class="material-icons">menu</i></a>
                <a href="#" id="menuClose"><i class="material-icons">close</i></a>
            </div>
            
        </div>
    </div>
</div>

    <!-- Mobile -->
<div class="col-6" id="menuMobile">
    <nav class="navbar navbar-default">    
        <?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?>
    </nav> 
</div>
  
    


          

      
      




