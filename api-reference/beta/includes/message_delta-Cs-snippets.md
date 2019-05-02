
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.MailFolders["{id}"].Messages.Delta()
	.Request()
	.GetAsync();

```