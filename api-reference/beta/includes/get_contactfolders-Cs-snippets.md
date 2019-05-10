
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contactFolders = await graphClient.Me.ContactFolders
	.Request()
	.GetAsync();

```