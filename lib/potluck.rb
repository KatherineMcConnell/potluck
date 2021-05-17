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
    @dishes.select { |dish| dish.category == category}
  end

  def menu
    menu_h = Hash.new{|hash,key| hash[key] = []}
    @dishes.each do |dish|
      plural = dish.category.to_s + "s"
      menu_h[plural.to_sym] << dish.name
      menu_h[plural.to_sym].sort! #permanent tranformation w/a bang
    end
    menu_h
  end
  #aggregator or accumulator for our iteration. Each is where to start w/ enum b/c you have accumulator
  #get the names of dishes alphabetized into array

  def ratio(category)
    get_all_from_category(category).size.to_f/@dishes.size * 100
  end
end
