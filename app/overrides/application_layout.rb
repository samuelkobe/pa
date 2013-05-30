#Head Defaces
Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
:insert_bottom                     => "[data-hook=inside_head]",
:text                              => "<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,400italic' rel='stylesheet' type='text/css'>",
:name                              => "googleFontLoadedInHead")
#Footer Defaces
Deface::Override.new(:virtual_path => "spree/shared/_footer",
:insert_after                      => "#footer-right",
:text                              => "<script>$('img').lazyload();</script>",
:name                              => "lazyLoad")
#Footer Defaces
Deface::Override.new(:virtual_path => "spree/layouts/admin",
:insert_bottom                     => ".admin",
:text                              => "<script>$('img').lazyload();</script>",
:name                              => "lazyLoadBackend")