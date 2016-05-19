class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    
    private
    def pin
      @pin = 1234    
    end
    def pin_error
     "Access denied: incorrect PIN."
    end
    
    public
    def display_balance(pin_number)
     puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    def withdraw(pin_number, amount)
      if pin_number == pin
          if @balance == 0
              puts "You are out of money!"
          else
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{@balance}."
          end
      else 
          puts pin_error
      end
      
    end
    def deposit(pin_number, amount)
          if pin_number == pin
               @balance += amount
               puts "Deposited #{amount}. New balance: $#{@balance}."
          else
              puts pin_error
          end
      end
end

checking_account = Account.new("Edwin", 16_212_711.10)
checking_account.display_balance(1234)
checking_account.deposit(1234, 4_000_000.20)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 1_000_000.20)
