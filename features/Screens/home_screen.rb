class Home < Calabash::ABase

  def movies_validate
    page(Commom).element_validate("imageview")
  end
end
