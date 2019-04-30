

class OrderPage
    include Capybara::DSL
    29
    def fill_user(user)
        find('input[formcontrolname="name"]'). set nome
        find('input[formcontrolname="email"]'). set email
        find('input[formcontrolname="emailConfirmation"]'). set email_conf
        find('input[formcontrolname="address"]'). set address
        find('input[formcontrolname="number"]'). set number
        find('input[formcontrolname="optionalAddress"]'). set optionalAddress
    end

    def cost_shipping
        div = find('div[class*="col-sm-6"]', text: 'Frete e Total:')
        div.all("table tbody tr")
    end
end