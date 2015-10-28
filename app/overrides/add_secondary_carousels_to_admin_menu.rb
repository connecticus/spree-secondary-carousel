Deface::Override.new(
    :original => 'b511780df47e0ebcdfe1aeb87c0143df8d2f4985',
    :virtual_path => 'spree/layouts/admin',
    :name => 'add_secondary_carousels_to_admin_menu',
    :insert_bottom => '[data-hook="admin_tabs"]',
    :text => '<ul class="nav nav-sidebar">
        <%= tab Spree.t(:secondary_carousels), :url => admin_secondary_carousels_path, :icon => \'arrow-right\' %>
      </ul>'
)
