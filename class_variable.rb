class Creature
  @@creature_count = 0

  # 初期値設定
  def initialize(name)
    @name = name
    @@creature_count += 1
  end

  # クラスメソッドを定義。  
  def self.total_creatures
    @@creature_count
  end
end

# Creatureクラスを継承したAnimalクラス
class Animal < Creature
  def show_count
    @@creature_count
  end
end

c1 = Creature.new("不明生物")
a1 = Animal.new("犬")

puts "現在の生物の数: #{Creature.total_creatures}匹"
puts "現在の生物の数(Animal): #{a1.show_count}"