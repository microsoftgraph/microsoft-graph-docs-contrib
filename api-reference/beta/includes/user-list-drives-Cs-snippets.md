
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var drive = await graphClient.Users["{userId}"].Drives
	.Request()
	.GetAsync();

```