Deface::Override.new(:virtual_path      => "spree/shared/_sidebar",
                     :remove            => ".store-title",
                     :name              => "removeStoreTitle")
                     
Deface::Override.new(:virtual_path  => "spree/shared/_sidebar",
                     :insert_before => "#sidebar",
                     :text          => "<h2 class='store-title'>Store</h2>",
                     :name          => "InsertTitle")

Deface::Override.new(:virtual_path  => "spree/shared/_sidebar",
                     :insert_before => "h2.store-title",
                     :text          => "<%= image_tag('https://s3.amazonaws.com/online-static-potential-bucket/images/store-banner.jpg', :style => 'width:100%;')",
                     :name          => "bannerImage")                                          

Deface::Override.new(:virtual_path      => "spree/shared/_sidebar",
                     :set_attributes    => "#sidebar",
                     :attributes        => { :class => "row" },
                     :name              => "sidebar_class")

Deface::Override.new(:virtual_path      => "spree/shared/_taxonomies",
                     :replace           =>        "#taxonomies",
                     :text              => "<nav id='taxonomies' class='sidebar-item' data-hook>
                                               <% get_taxonomies.each do |taxonomy| %>
                                                 <div class='columns eight'>
                                                   <h6 class='taxonomy-root <%= cycle('sort_one', 'sort_two', :name => 'classes') %>'><%= cycle('Clothing Type', 'Gender') %></h6>                                            
                                                   <%= taxons_tree(taxonomy.root, @taxon, Spree::Config[:max_level_in_taxons_menu] || 1) %>
                                                 </div>
                                               <% end %>
                                           </nav>",
                     :name               => "sidebarTopDiv")
                     
