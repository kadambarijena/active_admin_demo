ActiveAdmin.register_page "Dashboard" do
 ActiveAdmin::Dashboards.build do
  section "Recent Products" do
    table_for Product.order("released_at desc").limit(5) do
      column :name do |product|
        link_to product.name, [:admin, product]
      end
      column :released_at
    end
    strong { link_to "View All Products", admin_products_path }
  end
end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  # content
end
