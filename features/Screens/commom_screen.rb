class Commom < Calabash::ABase

  def text_validate(*args)
    args.each do |text|
      wait_for_elements_exist(["* text:'#{text}'"], :timeout => 10)
    end
  end

  def element_validate(*args)
    args.each do |elements|
      wait_for_elements_exist(["* id:'#{elements}'"], :timeout => 10)
    end
  end

  def scroll_down_home(quantity)
    height_list = query("* id:'fragment'", :height).join(" ").to_i
    quantity.times do
      perform_action('drag_coordinates', 0, height_list, 0, 0)
    end
  end

  def scroll_down_search(quantity)
    height_list = query("* id:'content'", :height).join(" ").to_i
    quantity.times do
      perform_action('drag_coordinates', 0, height_list, 0, 0)
    end
  end

  def home_screen_validate
    text_validate('Moviest')
    element_validate('action_search','action_bar','action_bar_container')
  end
end
