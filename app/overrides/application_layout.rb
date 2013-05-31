#Head Defaces
Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
:insert_bottom                     => "[data-hook=inside_head]",
:text                              => "<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,400italic' rel='stylesheet' type='text/css'>",
:name                              => "googleFontLoadedInHead")

#Store Footer
Deface::Override.new(:virtual_path => "spree/shared/_footer",
:remove                            => "#footer",
:name                              => "removeStoreFooter")

#Store Footer
Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
:insert_after                      => ".container",
:partial                           => "../views/store/store_footer",
:name                              => "replaceStoreFooter")

#Footer Defaces
Deface::Override.new(:virtual_path => "spree/layouts/admin",
:insert_bottom                     => ".admin",
:text                              => "<script>$('img').lazyload();</script>",
:name                              => "lazyLoadBackend")
