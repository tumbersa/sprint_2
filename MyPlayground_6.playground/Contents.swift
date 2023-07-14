import Foundation

struct BankAccount {
    private(set) var balance: Double
    private(set) var transactionHistory: [String] = []
    
    mutating func deposit (_ amount: Double) {
        balance += amount
        transactionHistory.append("Пополнение счета на сумму \(amount) руб. Доступно: \(balance)")
    }
    
    mutating func withdraw (_ amount: Double)->Bool {
        if balance > amount {
            balance -= amount
            transactionHistory.append("Снятие наличных \(amount) руб. Доступно: \(balance)")
            return true
        }
        return false
    }
}
var bankAcc = BankAccount(balance: 500)
bankAcc.deposit(400)
bankAcc.withdraw(700)
print(bankAcc.transactionHistory)
