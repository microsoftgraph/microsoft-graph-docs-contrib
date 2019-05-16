
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var drives = await graphClient.Sites["{siteId}"].Drives
	.Request()
	.GetAsync();

```