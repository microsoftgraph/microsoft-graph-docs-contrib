
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messageRule = await graphClient.Me.MailFolders["inbox"].MessageRules
	.Request()
	.GetAsync();

```