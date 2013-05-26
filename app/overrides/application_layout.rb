Deface::Override.new(:virtual_path  => "spree/shared/_footer",
                     :insert_after       => "#footer-right",
                     :text          => "<script>$('img').lazyload();</script>",
                     :name          => "lazyload")