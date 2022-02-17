<?php 



function wpbootstrap_scripts_with_jquery()
{
	// Register the script like this for a theme:
	wp_register_script( 'custom-script', get_template_directory_uri() . '/bootstrap/js/bootstrap.js', array( 'jquery' ) );
	// For either a plugin or a theme, you can then enqueue the script:
	wp_enqueue_script( 'custom-script' );
}
add_action( 'wp_enqueue_scripts', 'wpbootstrap_scripts_with_jquery' );

if ( function_exists('register_sidebar') )
	register_sidebar(array(
		'before_widget' => '',
		'after_widget' => '',
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	));

// Thumbnails

add_theme_support( 'post-thumbnails' );

// Menu support
function register_menu(){
  register_nav_menus( array(
    'primary' => 'Primary Navigation'
  ));
}

add_action( 'after_setup_theme', 'register_menu' );

// Lister blog posts

add_shortcode( 'post_grid', 'display_post_grid' );
 
    function display_post_grid($tag){
     
        $category = $tag["category"];

        
        $args = array(
            'post_type' => 'post',
            'post_status' => 'publish',
            'category_name' => $category
        );
        $str = "";
        $str .= "<div class='row' id='bloggpost'>";
 
                $query = new WP_Query( $args );
                if( $query->have_posts() ){
                    while( $query->have_posts() ){
                        $query->the_post();
                        $str .= "<div class='col-6 post-item'>";
                        $str .= "<div class='wrapper'>";
                        $str .= "<div class='image-wrapper'>";
                        $str .= "<img src='" . get_the_post_thumbnail_url() . "'>";
                        $str .= "</div>";
                        $str .= "<div class='text-wrapper'>";
                        $str .= "<h5>" . get_the_title() . "</h5>";
                        $content = get_the_excerpt();
                        $content = $content;
						$str .= apply_filters('the_content', $content);
                        $str .= "</div>";
                        $str .= "<a href='" . get_the_permalink() . "'class='btn btn-primary'> Les mer</a>";
        $str .= "</div>";
        $str .= "</div>";
                    }
                }
        $str .= "</div>";
        
        return $str; 

 
        wp_reset_postdata(); 
 
    }


?>