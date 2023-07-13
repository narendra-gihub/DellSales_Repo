public with sharing class LeadController {
    public static void createLead() {
        lead ld = new lead();
        ld.firstname = 'test';
        ld.lastname='lead';
        ld.phone='8798798798';
        insert ld;
    }
}