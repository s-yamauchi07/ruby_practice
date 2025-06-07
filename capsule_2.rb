class BankAccount
  # ゲッターセッターを定義
  attr_accessor :balance
  
  # インスタンス変数として残高をカプセル化
  def initialize(initial_balance)
    @balance = initial_balance
  end

  # 入金メソッド
  def deposit(amount)
    if amount > 0
        @balance += amount
        puts "#{amount}円を入金しました。現在の残高は#{@balance}円です"
    else 
      puts "不正な入金額です" 
    end
  end

  # 出金するためのメソッド
  def withdraw(amount)
    if amount > 0 && amount <= @balance
      @balance -= amount
      puts "#{amount}円を出金しました。現在の残高は#{@balance}円です"
    elsif amount > @balance
      puts "残高不足です"
    else
      puts "不正な出金額です"
    end
  end

  # 以下のようなゲッターセッターをattr
  # ゲッターメソッド
  # def balance
  #   @balance
  # end

  # セッターメソッド
  # def balance
  #   @balance = value
  # end
end

# インスタンスの作成
my_account = BankAccount.new(10000) # 初期残高10000円で口座作成

# 残高の確認
puts "現在の残高: #{my_account.balance}円"

