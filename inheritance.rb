
# 親クラス(Animal)を定義
class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts "#{@name}が鳴いています"
  end

  def eat
    puts "#{@name}が食べています"
  end
end

# 子クラス(サブクラス)のDogクラスを定義
class Dog < Animal
  def initialize(name, breed)
    super(name)  # 親クラスのinitializeメソッドを呼び出す
    @breed = breed
  end

  # Animalクラスのspeakメソッドをオーバーライド
  def speak
    puts "#{@name}がワンワンと吠えます"
  end

  def paw
    puts "#{@name}がお手をしました"
  end
end

# 親のインスタンスを作成
animal = Animal.new("動物")
animal.speak
animal.eat

# 継承したDOGクラスのインスタンスを作成
dog = Dog.new("ポチ", "柴犬")
dog.speak  # オーバーライドされたメソッドが呼び出される
dog.eat    # 親クラスのメソッドも使用可能
dog.paw    # Dogクラス独自のメソッドも使用可能