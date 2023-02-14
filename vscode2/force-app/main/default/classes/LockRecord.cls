public class LockRecord {

@InvocableMethod (label='Lock Accounts')

public Static void LockAccounts(List<Id> listAccIds)
{

List<Account> listAccountsToLock= [Select Id, Name from Account where id =:listAccIds]  ;

  for (Account accountToLock : listAccountsToLock)

  {

      Approval.lock(accountToLock.id);

  }

}

}