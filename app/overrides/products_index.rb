Deface::Override.new(:virtual_path   => "spree/layouts/spree_application",
                     :name           => "change_content_id",
                     :set_attributes => "#content",
                     :attributes     => {:class => "columns sixteen"})

Deface::Override.new(:virtual_path   => "spree/shared/_products",
                     :name           => "edit_products_cycle",
                     :set_attributes => "[data-hook='products_list_item']",
                     :attributes     => { :class => "columns four <%= cycle('alpha', 'secondary', '', 'omega secondary', :name => 'classes') %>" })
