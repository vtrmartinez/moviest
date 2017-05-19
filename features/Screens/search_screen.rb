class Search < Calabash::ABase

  def touch_search
    touch("* contentDescription:'Buscar'")
  end

  def fill_search(movie)
    keyboard_enter_text movie
    hide_soft_keyboard
  end

  def title_movie_validate
    page(Commom).element_validate('text_title')
    query("* id:'text_title'", :text).first.should == "Deadpool"
  end

  def title_movie_validate_word
    page(Commom).element_validate('text_title')
    query("* id:'text_title'", :text).first.include? "Split"
  end

  def blank_result_validate
    element_does_not_exist("* id:'text_title'")
    element_does_not_exist("* id:'text_year'")
    element_does_not_exist("* id:'imageview'")
  end
end
