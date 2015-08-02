Spree::OrderContents.class_eval do

  def add(variant, quantity = 1, options = {})
    line_item = add_to_line_item(variant, quantity, options)
    after_add_or_remove(line_item, options)
  end

end
