/*
 * Name: ShareStandardObjectRecords
 * Description:
 * Note: Before we can start writing any Apex-managed sharing code, we must create an Apex-sharing reason.
 * History:
 * 		Narendra		25-06-2023		Initial Version
 */
Public class ShareStandardObjectRecords{   
    Public static void shareSBRecords(Id accountId){
        AccountShare Share_Record = new AccountShare();
        Share_Record.AccountId = accountId;
        Share_Record.UserOrGroupId = '0055i000007Y3S6AAK'; //user or group Id whom to share record
        Share_Record.AccountAccessLevel = 'Edit';
        Share_Record.OpportunityAccessLevel = 'Read';
        Share_Record.RowCause = Schema.AccountShare.RowCause.Manual; // Reason
        insert Share_Record;
    }
    public static void shareCBRecords(Id recordId){
        agents__Share agent = new agents__Share();
        agent.parentId = recordId;
        agent.UserOrGroupId = '0055i000007Y3S6AAK'; 
        agent.AccessLevel = 'Edit';
        agent.RowCause = Schema.agents__Share.RowCause.manual;
        insert agent;
    }
}