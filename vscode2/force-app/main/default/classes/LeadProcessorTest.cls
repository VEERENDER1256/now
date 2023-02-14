@isTest
public class LeadProcessorTest {
    @isTest static void check(){
        list<lead>c=new list<lead>();
        for(integer i=0;i<200;i++){
            lead g=new lead();
            g.LastName='ABSYZ';
            g.Company='ABSYZ';
            c.add(g);
        }
        insert c;
           
  Test.startTest();
      leadprocessor x = new leadprocessor();
    database.executeBatch(x);
    Test.stopTest();
    }
}