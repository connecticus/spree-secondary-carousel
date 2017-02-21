Deface::Override.new(
    original: 'f87a7f6f2f0150a62576f88c40f33e2d77669a10',
    virtual_path: 'spree/layouts/admin',
    name: 'add_secondary_carousels_to_admin_menu',
    insert_bottom: '[data-hook="admin_tabs"]',
    text: '<ul class="nav nav-sidebar">
        <%= tab Spree.t(:secondary_carousels), url: admin_secondary_carousels_path, icon: \'arrow-right\' %>
      </ul>'
)
