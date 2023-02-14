public class C_Bid_Home 
{
  Public PageReference Enrollement()
    {
        String Enrollurl = '/apex/Dealer_List';
        PageReference PR= New PageReference(Enrollurl);
        Return PR;
    }
    Public PageReference Login()
    {
        String Loginurl = '/apex/LoginPage';
        
        PageReference PR = New PageReference(Loginurl);
        return PR;
    }
}