
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointActivityFileCounts = await graphClient.Reports.GetSharePointActivityFileCounts('D7')
	.Request()
	.GetAsync();

```