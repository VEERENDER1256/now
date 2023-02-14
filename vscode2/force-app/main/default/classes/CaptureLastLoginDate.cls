global class CaptureLastLoginDate implements Database.Batchable<sObject>{

        //This is the query that is passed to the execute method. .

        String ids = UserInfo.getUserId();
        String query = 'SELECT id, LastLoginDate, FROM User ';

        global database.queryLocator start(Database.BatchableContext BC) {
             System.debug(query);
             return database.getQueryLocator(query);
        }
        //close start method
        global void execute(Database.BatchableContext BC, List<sObject> scope){
            List<Schema.User> u = new List<Schema.User> ();
            for(sObject s: Scope){
                Schema.User inv = (Schema.User)s;
                
                u.add(inv);
                System.debug(u);
            }
            update u;
        }

        global void finish(Database.BatchableContext sc){

        }       
   }