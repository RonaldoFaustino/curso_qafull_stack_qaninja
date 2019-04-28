
class RestaurantPage
    include Capybara::DSL

    def menu_list
        all('.menu-item-info-box')
    end

    def details
        find('#detail')
    end
end