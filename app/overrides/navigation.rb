Deface::Override.new(:virtual_path   => "spree/layouts/spree_application",
                     :insert_top  => "[data-hook='body']",
                     :text           => "<nav id='potential-store-nav'></nav>",
                     :name           => "potential_store_nav")

Deface::Override.new(:virtual_path   => "spree/shared/_nav_bar",
                     :remove         => "#top-nav-bar",
                     :name           => "removing_top_nav_to_move")

Deface::Override.new(:virtual_path   => "spree/shared/_main_nav_bar",
                     :remove         => "#main-nav-bar",
                     :name           => "removing_top_main_nav_to_move")
                     
Deface::Override.new(:virtual_path   => "spree/layouts/spree_application",
                     :insert_top     => "#potential-store-nav",
                     :partial        => "../views/spree/shared/main_nav_bar",
                     :name           => "inserting_spree_main_nav_bar")
                     
Deface::Override.new(:virtual_path   => "spree/layouts/spree_application",
                     :insert_before  => "#link-to-cart",
                     :partial        => "../views/spree/shared/login_bar",
                     :name           => "inserting_spree_login")

Deface::Override.new(:virtual_path   => "spree/layouts/spree_application",
                     :set_attributes => "#main-nav-bar",
                     :attributes     => {:id => 'potential-apparel-inner-nav'},
                     :name           => "remove_styles_from_cart_link")
                     
Deface::Override.new(:virtual_path   => "spree/layouts/spree_application",
                     :replace        => "#home-link",
                     :text           => "<li><a href='http://potentialapparel.com' class='brand'>Potential Apparel</a></li><li id='home-link' data-hook><%= link_to 'Store', spree.root_path %></li>",
                     :name           => "replace_home_with_apparel")
