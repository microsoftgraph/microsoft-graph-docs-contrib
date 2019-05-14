
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var drives = await graphClient.Users["{userId}"].Drives
	.Request()
	.GetAsync();

```