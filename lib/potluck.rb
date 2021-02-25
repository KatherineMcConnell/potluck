class Potluck
  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    menu_section = []
    @dishes.each do |dish|
      if dish.category == category
        menu_section << dish
      end
    end
    menu_section
  end

  def menu
    sorted_dishes = @dishes.sort_by do |dish|
      dish.name
    end
    menu_categories = {}
    sorted_dishes.each do |dish|
      if menu_categories["#{dish.category}s".to_sym] == nil
        menu_categories["#{dish.category}s".to_sym] = [dish.name]
      else
        menu_categories["#{dish.category}s".to_sym] << dish.name
      end
    end
    menu_categories
  end

  def ratio(category)
    (get_all_from_category(category).count / @dishes.count.to_f) * 100.0
  end

end
