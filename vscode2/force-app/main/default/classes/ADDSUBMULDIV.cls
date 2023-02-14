public class ADDSUBMULDIV 
{
    PUBLIC INTEGER NUM1 {GET;SET;}
    PUBLIC INTEGER NUM2 {GET;SET;}
    PUBLIC INTEGER RESULT {GET;SET;}
    PUBLIC STRING CHZ  {GET;SET;}
    
    PUBLIC VOID MAINMETHOD()
    {
        IF(CHZ=='ADD')
        {
            ADDITTION();
        }
        ELSE IF (CHZ=='SUB')
        {
            SUB();
        }
        ELSE IF (CHZ=='MUL')
        {
            MUL();
           
        }
        ELSE IF  (CHZ=='DIV')
        {
            DIV();
        }
        ELSE
        {
            RESULT=NULL;
        }
    }
    
    VOID ADDITTION()
    {
        RESULT=NUM1+NUM2;
    }
    VOID SUB()
    {
        RESULT=NUM1-NUM2;
    }
    VOID MUL()
    {
        RESULT=NUM1*NUM2;
    }
    VOID DIV()
    {
        RESULT=NUM1/NUM2;
    }
}