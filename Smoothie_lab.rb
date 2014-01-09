# mix up all the ingredient characters in the keys and remove the spaces
# method for getting keys out of a hash
# randomly chose 3 ingredients and blended it

# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

# take all ingredients
# Save those ingredient keys as ones string
# delete spaces -- use .delete(" ")
# jumble string
# returns output of mixed up characters


# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender  # define a class recipe for object Blender

  attr_accessor :status  # enable read/write access
  def initialize(status="off")  # initialize method with variable status by default set to off
    @status = status # instantiate the variable status
  end

  def switch  
    if @status == "off"
      @status = "on"
    else
      @status = "off"
    end
  end  

  def blend(smoothie_ingredients)
      ingredients_blend = []
      ingredients_blend = smoothie_ingredients.keys.shuffle.join.delete(" ")
      smoothie_ingredients = ingredients_blend
  end
end

blender1 = Blender.new
puts "Your blender is #{blender1.status}. Enter 'on' to turn it on."
res = gets.chomp
until res == 'off'
  if res == 'on'
      puts blender1.blend(smoothie_ingredients)
      puts "To blend again, enter 'b'.  To turn off, enter 'off'."
      res = gets.chomp
    elsif res == 'b'
      puts blender1.blend(smoothie_ingredients)
      puts "To blend again, enter 'b'.  To turn off, enter 'off'."
      res = gets.chomp
    else
  end
  puts "Your blender is #{blender1.status}."
end




