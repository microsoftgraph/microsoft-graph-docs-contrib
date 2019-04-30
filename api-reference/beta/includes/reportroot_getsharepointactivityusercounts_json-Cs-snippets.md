
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharePointActivityUserCounts = await graphClient.Reports.GetSharePointActivityUserCounts('D7')
	.Request()
	.GetAsync();

```