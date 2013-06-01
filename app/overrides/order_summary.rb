Deface::Override.new(:virtual_path   => "spree/shared/_order_details",
                     :replace        => "[data-hook='order_item_description']",
                     :text           => "<h4><%= item.variant.product.name %></h4>
                                         <%= '(' + item.variant.options_text + ')' unless item.variant.option_values.empty? %>",
                     :name           => "removeOrderDetails")
                     
#IF EVER USING REAL SPREE VARIANTS AGAIN REMOVE BELOW FOR TESTING.
Deface::Override.new(:virtual_path   => "spree/orders/_line_item",
                     :replace        => "[data-hook='cart_item_description']",
                     :text           => "<td class='cart-item-description' data-hook='cart_item_description'>
                                         <h4><%= link_to variant.product.name, product_path(variant.product) %></h4>
                                         <%= variant.options_text %>
                                         <% if @order.insufficient_stock_lines.include? line_item %>
                                         <span class='out-of-stock'>
                                         <%= Spree.t(:out_of_stock) %>&nbsp;&nbsp;<br /></span>
                                         <% end %>
                                         </td>",
                     :name           => "RemoveCartDetails")