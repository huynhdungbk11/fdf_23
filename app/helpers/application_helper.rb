module ApplicationHelper
  def check_name object
    object.nil? ? "" : object.name
  end

  def check_description object
    object.nil? ? "" : object.description
  end

  def check_price object
    object.nil? ? "" : object.price
  end

  def check_image object
    object.nil? ? "" : object.image
  end

  def check_suggestion object
    object.nil?
  end
end
