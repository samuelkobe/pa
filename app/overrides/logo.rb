Deface::Override.new(:virtual_path  => "spree/shared/_header",
                     :remove        => "#logo",
                     :name          => "DeleteLogo")
                     
Deface::Override.new(:virtual_path  => "spree/products/show",
                     :insert_before => "[data-hook='product_show']",
                     :text          => "<%= button_to 'Back', :back, :class => 'columns two back-styles' %>",
                     :name          => "InsertBackButton")
                     
Deface::Override.new(:virtual_path   => "spree/products/show",
                     :name           => "sixToEight",
                     :set_attributes => "[data-hook='product_left_part']",
                     :attributes     => { :class => "columns eight alpha" })
                     
Deface::Override.new(:virtual_path   => "spree/products/show",
                     :name           => "eightToTen",
                     :set_attributes => "[data-hook='product_right_part']",
                     :attributes     => { :class => "columns eight omega" })

