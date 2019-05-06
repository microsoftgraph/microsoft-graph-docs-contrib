
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var drive = await graphClient.Drives["{driveId}"]
	.Request()
	.GetAsync();

```