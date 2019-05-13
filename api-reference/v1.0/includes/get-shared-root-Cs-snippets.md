
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharedDriveItem = await graphClient.Shares["{shareIdOrEncodedSharingUrl}"]
	.Request()
	.GetAsync();

```