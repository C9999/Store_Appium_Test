Dado(/^que eu estou na home sem ter realizado o login$/) do
  wait { touch_popup }
  find_element(id: 'main_layout')
end
