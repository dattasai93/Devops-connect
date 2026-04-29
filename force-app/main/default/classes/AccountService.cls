public with sharing class AccountService {

    public static List<Account> getAccounts() {
        return [SELECT Id, Name FROM Account LIMIT 10];
    }

    public static Account createAccount(String name) {
        Account acc = new Account(Name = name);
        insert acc;
        return acc;
    }
}