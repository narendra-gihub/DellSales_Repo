/*
* Name: TestDataFactory 
* Auther: SFDC
* Description: Automations on account object.
* History: 
*		Narendra Vatala		13-05-2023		Initial Version
*/
public class TestDataFactory {
    public static list<profile> createProfiles(integer recCount, string name){
        list<profile> proList = new list<profile>();
        for(integer i=0;i<recCount;i++){
            profile pro = new profile();
            pro.name = name+i;
            proList.add(pro);
        }
        return proList;
    }
}