
class RestaurantPage
    include Capybara::DSL

    def menu_list
        all('.menu-item-info-box')
    end

    def details
        find('#detail')
    end

    def add_to_cart(nome)
        find('.menu-item-info-box', text: nome.upcase, wait: 15).find('.add-to-cart').click
    end

    def cart
        CartView.new
    end

end

