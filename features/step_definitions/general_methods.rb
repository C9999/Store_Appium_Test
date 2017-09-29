# Implimentar módulo
def touch_popup
  @dialog = 'generic_dialog_positive'
  begin
    active = find_element(id: @dialog).displayed?
  rescue
    active = false
  end
  find_element(id: @dialog).click if active
end

def popup_shopping_cart
  @dialog_cart = 'content_positive'
  sleep 3
  begin
    active = find_element(id: @dialog_cart).displayed?
  rescue
    active = false
  end
  find_element(id: @dialog_cart).click if active
end

def list_itens(result_number) # Implementar swipe
  @p_item = 'product_item'
  @p_price = 'product_price'
  i = 0
  px = '0,0'
  
  while i < result_number do
    px = find_elements(id: @p_item)[i].find_element(id: @p_price).text
    print "Valor do item #{i + 1} é #{px} "
    print "\n"
    i += 1
  end
end

def send_enter
  $driver.press_keycode(66) # Submit
end

def swipe_vertical
  Appium::TouchAction.new.swipe(start_x: 0.2, start_y: 0.2, end_x: 0.1, end_y: 4.5, duration: 600).perform
end