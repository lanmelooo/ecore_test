class LoginPage < SitePrism::Page

    element :field_username, 'input[name="username"]'
    element :field_password, 'input[name="password"]'
    element :login, ''
    element :text_validation, 'h2[class="mt-5"]'
    element :alert_error, 'div[class="alert alert-danger mt-3"]'

    def fill_login_fields(user, password)
        field_username.set user
        field_password.set password
    end

    def click_login(click)
        click_on(click)
    end

    def fill_multi_users(user, password)
        field_username.set(user)
        field_password.set(password)
    end
end