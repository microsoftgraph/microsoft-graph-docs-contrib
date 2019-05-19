
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointActivityUserDetail = await graphClient.Reports.GetSharePointActivityUserDetail('D7')
	.Request()
	.GetAsync();

```