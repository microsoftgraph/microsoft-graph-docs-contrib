
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetSharePointActivityFileCounts('D7')
	.Request()
	.GetAsync();

```