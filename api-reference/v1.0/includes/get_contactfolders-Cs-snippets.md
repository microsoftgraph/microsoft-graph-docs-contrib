
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contactFolder = await graphClient.Me.ContactFolders
	.Request()
	.GetAsync();

```