
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var childFolders = await graphClient.Me.MailFolders["{id}"].ChildFolders
	.Request()
	.GetAsync();

```