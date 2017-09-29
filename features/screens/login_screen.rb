class LoginEmail
  def initialize
    @user_acess = 'menu_user_enter'
    @user_menu = 'menu_user'
    @email_field = 'signin_email'
    @password_field = 'signin_pass'
    @btn_sigin = 'signin_enter'
    @menu_logout = 'menu_logout'
    @dialog = 'content_dialog'
    @btn_alert_yes = 'material_dialog_positive'
    @btn_alert_no = 'material_dialog_negative'
  end

  def acess_menu
    find_element(id: 'action_bar').find_element(xpath: '//android.widget.ImageButton').click
    wait { find_element(id: @user_acess) }
    find_element(id: @user_acess).click
  end

  def enter_email(email)
    find_element(id: @email_field).send_keys(email)
  end

  def enter_pass(password)
    find_element(id: @password_field).send_keys(password)
  end

  def confirm_login
    find_element(id: @btn_sigin).click
  end

  def validate_login
    return wait { find_element(id: @user_menu).text }
  end

  def validate_login_error
    wait { find_element(id: @btn_alert_yes).click if find_element(id: @dialog).displayed? }
  end

  def end_session
    find_element(id: @menu_logout).click
    find_element(id: @btn_alert_yes).click
  end
end
