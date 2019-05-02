
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.MailFolders["{id}"].Messages.Delta()
	.Request()
	.Header("Prefer","odata.maxpagesize=2")
	.GetAsync();

```