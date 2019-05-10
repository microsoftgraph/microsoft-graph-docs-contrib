
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var childFolders = await graphClient.Me.MailFolders["AAMkAGVmMDEzM"].ChildFolders
	.Request()
	.GetAsync();

```