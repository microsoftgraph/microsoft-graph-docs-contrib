
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Shares["{shareIdOrUrl}"].DriveItem
	.Request()
	.Expand("children")
	.GetAsync();

```