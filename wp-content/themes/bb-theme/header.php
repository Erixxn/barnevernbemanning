 <head>
    <meta charset="utf-8">
    <title><?php wp_title('|',1,'right'); ?> <?php bloginfo('name'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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

 <div class="col-6" id="menuheader">
     
    <?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?>
     
     
  <!--          <ul>
            <li><a href="default.asp">HJEM</a></li>
            <li><a href="/tjenester/">TJENESTER</a></li>
            <li><a href="contact.asp">KONSULENTER</a></li>
            <li><a href="about.asp">OM OSS</a></li>
            <li><a href="about.asp">KONTAKT</a></li>
          </ul>
    </div>    
  -->
 
</div>
</div>
</div>
</div>
  
    


          

      
      


  <div class="container">

    </div>


