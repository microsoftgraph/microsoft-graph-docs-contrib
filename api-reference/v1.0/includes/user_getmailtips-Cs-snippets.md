
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var EmailAddressesList = new List<String>();
EmailAddressesList.Add( "danas@contoso.onmicrosoft.com" );
EmailAddressesList.Add( "fannyd@contoso.onmicrosoft.com" );

var MailTipsOptions = "automaticReplies, mailboxFullStatus";

await graphClient.Me
	.GetMailTips(emailAddressesList,mailTipsOptions)
	.Request()
	.PostAsync()

```