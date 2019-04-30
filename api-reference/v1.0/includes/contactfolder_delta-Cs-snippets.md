
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contactFolder = await graphClient.Me.ContactFolders.Delta()
	.Request()
	.Header("Prefer","odata.maxpagesize=2")
	.GetAsync();

```