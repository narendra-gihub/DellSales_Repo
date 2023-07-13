public class opportunityController {
    @AuraEnabled(cacheable=true)
    public static list<OpportunityLineItem> getOppLineItems(string oppLI){
        String strKey = '%'+oppLI+'%';
        return [select id,name from OpportunityLineItem WHERE name like :strKey];
    }
}