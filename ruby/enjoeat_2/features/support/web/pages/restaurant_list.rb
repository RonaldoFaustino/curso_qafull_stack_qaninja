
class RestaurantListPage
    include Capybara::DSL

    def load
        visit '/restaurants'
    end

    def list
        all('.col-sm-6')
    end

    def go(restaurant)
        find('.restaurant-item', text: restaurant.upcase).click
    end
end