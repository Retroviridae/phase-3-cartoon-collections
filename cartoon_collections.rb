def roll_call_dwarves(dwarves)
  dwarves.each.with_index do |dwarf,index|
    puts "#{index+1}: #{dwarf}"
  end
end

def summon_captain_planet(elements)
  elements.map do |element|
  element[0].upcase + element.slice(1,element.length) + "!"
  end
end


def long_planeteer_calls(arr)
  filtered = arr.filter { |word| word.length >4}
  if filtered.length == 0
    false
  else
    true
  end
end

def find_the_cheese(ingredients)
  cheese_types = ["cheddar", "gouda", "camembert"]
  numbers = []
  cheese_types.each do |cheese|
   numbers.push(ingredients.find_index { |ingredient,index| ingredient.include?(cheese)})
   numbers.filter { |number| number!= nil}
  end

  numbers.filter! { |number| number!= nil}
  if numbers.length == 0
    nil
  else
  ingredients[numbers.sort[0]]
  end
end
soup = ["tomato soup", "cheddar", "oyster crackers", "gouda"]
find_the_cheese(soup)
