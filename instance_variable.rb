class Person
  def initialize(name,age)
    @name = name
    @age = age
  end

  def display_info
    puts "名前: #{@name}, 年齢: #{@age}"
  end

  def change_age(new_age) 
    @age = new_age
  end
end

# インスタンスを作成
taro = Person.new("太郎", 25)
hanako = Person.new("花子", 22)
taro.display_info
taro.change_age(30)
taro.display_info

hanako.display_info