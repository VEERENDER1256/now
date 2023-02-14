public class NEW_EX1611 
{
 
    PUBLIC VOID ABC()
    {
        FOR(CONTACT ED1:[SELECT LASTNAME,ACCOUNT.INDUSTRY FROM CONTACT WHERE ACCOUNT.INDUSTRY!=NULL])
        {
            FOR(LEAD ED2:[SELECT LASTNAME,INDUSTRY FROM LEAD WHERE INDUSTRY!=NULL])
            {
                IF(ED1.ACCOUNT.INDUSTRY==ED2.INDUSTRY && ED1.LASTNAME==ED2.LASTNAME)
                {
                    SYSTEM.DEBUG('THIS IS DUPLICATE'+ED1.LASTNAME);
                }
            }
        }
    }
    
}