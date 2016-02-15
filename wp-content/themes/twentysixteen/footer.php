<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

		</div><!-- .site-content -->

		<footer id="colophon" class="site-footer" role="contentinfo">
			<?php if ( has_nav_menu( 'primary' ) ) : ?>
				<nav class="main-navigation" role="navigation" aria-label="<?php esc_attr_e( 'Footer Primary Menu', 'twentysixteen' ); ?>">
					<?php
						wp_nav_menu( array(
							'theme_location' => 'primary',
							'menu_class'     => 'primary-menu',
						 ) );
					?>
				</nav><!-- .main-navigation -->
			<?php endif; ?>

			<?php if ( has_nav_menu( 'social' ) ) : ?>
				<nav class="social-navigation" role="navigation" aria-label="<?php esc_attr_e( 'Footer Social Links Menu', 'twentysixteen' ); ?>">
					<?php
						wp_nav_menu( array(
							'theme_location' => 'social',
							'menu_class'     => 'social-links-menu',
							'depth'          => 1,
							'link_before'    => '<span class="screen-reader-text">',
							'link_after'     => '</span>',
						) );
					?>
				</nav><!-- .social-navigation -->
			<?php endif; ?>

			<div class="site-info ad-site-footer">
				<?php
					/**
					 * Fires before the twentysixteen footer text for footer customization.
					 *
					 * @since Twenty Sixteen 1.0
					 */
					do_action( 'twentysixteen_credits' );
				?>
				<p class="ad-footer-text">Copyright (c) 2016 by <a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a>
				<br>Wszystkie prawa zastrzeżone<br>
                    Designed by <a href="http://archangel-design.com">Archangel Design</a>
                </p>
                <img class="ad-footer-logo" src="<?php echo home_url('/')?>public/img/logo.jpg">
			</div><!-- .site-info -->
		</footer><!-- .site-footer -->
	</div><!-- .site-inner -->
</div><!-- .site -->

<?php wp_footer(); ?>
</body>
</html>

<script>
    jQuery(document).ready(function($) {
        var opt = {
            container: this,
            duration: 350, // the speed of the sliding animation in milliseconds
            delay: 3000, // initial auto-scrolling delay for each loop
            margin: 5, // borders size. The margin is set in pixels.
            mouseTouch: true,
            namespace: "touchslider",
            next: ".touchslider-next", // jQuery object for the elements to which a "scroll forwards" action should be bound.
            pagination: ".touchslider-nav-item",
            currentClass: "touchslider-nav-item-current", // class name for current pagination item.
            prev: ".touchslider-prev", // jQuery object for the elements to which a "scroll backwards" action should be bound.
            //scroller: viewport.children(),
            autoplay: false, // whether to move from image to image automatically
            viewport: ".touchslider-viewport"
        }
        $('.touchslider').touchSlider(opt);

    });
</script>