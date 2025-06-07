class BankAccount
  # 初期化メソッド。インスタンス変数がデフォルトでカプセル化される。
  def initialize(initial_balance)
    @balance = initial_balance
  end

  # 口座残高を外部から確認するメソッド(ゲッター)
  def balance
    @balance
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
end

# インスタンスの作成
my_account = BankAccount.new(10000) # 初期残高10000円で口座作成

# 残高の確認
# 直接class外から@balanceにアクセスできないので、ゲッター経由でアクセス
puts "現在の残高は#{my_account.balance}円です。" 

# 入金を実行
my_account.deposit(5000) # depositメソッドを実行して、残高更新

# 出金を実施
my_account.withdraw(2000) # withdrawメソッドを実行して、残高更新
