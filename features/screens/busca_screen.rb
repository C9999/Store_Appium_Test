require 'touch_action'
class SearchProducts
    def initialize
        @btn_search = 'search_button'
        @search_bar = 'search_bar'
        @p_item = 'product_item'
        @p_price = 'product_price'
        @btn_order = 'container_header_sort'
        @menu_order = 'content_dialog'
    end

    def search_menu 
        find_element(id: @btn_search).click
    end

    def product_search(item)
        find_element(id: @search_bar).send_keys(item)
        send_enter
    end
    
    def result_list
        wait { popup_shopping_cart }
        wait { find_elements(id: @p_item)[0].find_element(id: @p_price) }
        list_itens(4)
    end

    def select_product(i)
        find_elements(id: @p_item)[i].find_element(id: @p_price).click  
    end

    def order_list(i)
        touch_popup
        find_element(id: @btn_order).click
        find_element(id: @menu_order).find_element(xpath: "//android.widget.RadioButton[@text='#{i}']").click
    end
end
