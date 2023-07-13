public class accountController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsRelatedToAccount(String accId) {
        return [SELECT Id, FirstName, LastName, Email, Phone from Contact where AccountId = :accId];
    }
    @AuraEnabled
    public static List<Contact> getContacts(String accId) {
        return [SELECT Id, FirstName, LastName, Email, Phone from Contact where AccountId = :accId];
    }
    @AuraEnabled
    public static List<account> getAccounts(String accId) {
        return [SELECT Id, name, industry from account where Id = :accId];
    }
}