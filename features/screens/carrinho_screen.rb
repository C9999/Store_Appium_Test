class CartCheckout
  def initialize
    @action_bar_title = 'action_bar_title'
    @p_name = 'tvProductTitle'
    @p_price = 'tvProductPrice'
    @p_size = 'tvSize'
    @p_remove = 'ctvCartRemove'
    @p_size = 'attribute_text'
    @p_total = 'tvSubtotal'
    @btn_option_gift = 'checkGiftPackaging'
    @cep_number = 'custom_edit_text'
    @btn_remove_cep = 'custom_edit_text_icon'
    @btn_checkout = 'btnCheckout'
    @btn_add = 'progress_button_text'
    @btn_cart_yes = 'dialog_stamps_cart' 
  end

  def popup_go_cart
    begin
      active = find_element(id: @btn_cart_yes).displayed?
    rescue
      active = false
    end
    find_element(id: @btn_cart_yes).click if active
  end

  def select_sku(i)
    2.times { swipe_vertical }
    wait { find_elements(id: @p_size)[i].click }
  end

  def add_prod_cart
    wait {
      find_element(id: @btn_add).click
      popup_go_cart
    }   
  end

  def add_cep(cep_number)
    find_element(id: @cep_number).send_keys(cep_number)  
  end

  def checkout_update
    result = ''
    wait { result = find_element(id: @action_bar_title).text }
    find_element(id: @p_price).text == find_element(id: @p_total).text
    return result
  end
end
