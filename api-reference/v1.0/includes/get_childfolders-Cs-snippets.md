
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = await graphClient.Me.MailFolders["{id}"].ChildFolders
	.Request()
	.GetAsync();

```