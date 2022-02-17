<?php get_header(); ?>

<div class="container" id="bloggpost">
  <div class="row">
      <h1>Blogg</h1>

	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php   
      echo "<div class='col-6 post-item'>";

                        echo "<div class='wrapper'>";
                        echo "<div class='image-wrapper'>";
                        echo "<img class='img-responsive' src='" . get_the_post_thumbnail_url() . "'>";
                        echo "</div>";
                        echo "<div class='text-wrapper'>";
                        echo "<h5>" . get_the_title() . "</h5>";
                        $content = get_the_excerpt();
                        $content = $content;
						echo apply_filters('the_content', $content);
                        echo "</div>";
                        echo "<a href='" . get_the_permalink() . "'class='btn btn-primary'> Les mer</a>";
        echo "</div>";
        echo "</div>";
      ?>

	<?php endwhile; else: ?>
		<p><?php _e('Sorry, this page does not exist.'); ?></p>
	<?php endif; ?>

  </div>
</div>

<! –– <?php get_footer(); ?> ––> 