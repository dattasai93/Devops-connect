@isTest
public class AccountServiceTest {

    @isTest
    static void testCreateAccount() {
        Test.startTest();

        Account acc = AccountService.createAccount('Test Account');

        Test.stopTest();

        System.assertNotEquals(null, acc.Id);
    }

    @isTest
    static void testGetAccounts() {
        Account acc = new Account(Name = 'Sample');
        insert acc;

        Test.startTest();

        List<Account> accList = AccountService.getAccounts();

        Test.stopTest();

        System.assert(accList.size() > 0);
    }
}