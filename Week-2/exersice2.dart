class BankAccount {
  final int _accountID;
  final String _owner;
  double _balance = 0;

  BankAccount(this._accountID, this._owner);

  int get accountID => _accountID;
  String get owner => _owner;
  // double get balance => _balance;

  double balance() {
    return _balance;
  }

  void withdraw(double amount) {
    if (_balance - amount < 0) {
      throw Exception("Insufficient balance for withdrawal!");
    } else {
      _balance -= amount;
    }
  }

  void credit(double amount) {
    if (_balance < amount) {
      throw Exception("Amount exceeds the account balance!");
    } else {
      _balance += amount;
    }
  }
}

class Bank {
  final String name;
  List<BankAccount> _accounts = [];

  Bank({required this.name});

  List<BankAccount> get accounts => _accounts;

  BankAccount createAccount(int newAccountId, String accountOwner) {
    for (var account in accounts) {
      if (account.accountID == newAccountId) {
        throw Exception("Account with ID $newAccountId already exists!");
      }
    }

    BankAccount newAccount = BankAccount(newAccountId, accountOwner);
    accounts.add(newAccount);

    return newAccount;
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance()); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance()); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance()); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
