public class nov_16_ex1 
{
    PUBLIC LIST<DATA> CON;
    PUBLIC LIST<DATA> LEA;
    
    LIST<DATA> CONL1()
    {
        CON= NEW LIST<DATA>();
        FOR(CONTACT ED:[SELECT LASTNAME,ACCOUNT.INDUSTRY FROM CONTACT WHERE ACCOUNT.NAME!=NULL])
        {
            DATA CON1=NEW DATA();
            CON1.LASTNAME=ED.LASTNAME;
            CON1.INDUSTRY =ED.ACCOUNT.INDUSTRY;
            CON.ADD(CON1);
        }
        RETURN CON; 
    }
    
    LIST<DATA> LL1()
    {
        LEA= NEW LIST<DATA>();
        FOR(LEAD ED3:[SELECT LASTNAME,INDUSTRY FROM LEAD WHERE INDUSTRY!=NULL])
        {
            DATA LEA1=NEW DATA();
           LEA1.LASTNAME=ED3.LASTNAME;
            LEA1.INDUSTRY=ED3.INDUSTRY;
            LEA.ADD(LEA1);
        }
        RETURN LEA; 
    }
    PUBLIC VOID DUP()
    {
        LL1();
        CONL1();
        SYSTEM.DEBUG(LEA);
         SYSTEM.DEBUG(CON);
        FOR(DATA ED1:CON)
        {
            FOR(DATA ED2:LEA)
            {
                IF(ED1.LASTNAME == ED2.LASTNAME && ED1.INDUSTRY==ED2.INDUSTRY)
                {
                    SYSTEM.debug('ITS A DUPLICATE'+ED1.LastName);
                }
            }
        }
    }
}