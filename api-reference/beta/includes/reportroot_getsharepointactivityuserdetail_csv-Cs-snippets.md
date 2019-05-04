
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharePointActivityUserDetail = await graphClient.Reports.GetSharePointActivityUserDetail('D7')
	.Request()
	.GetAsync();

```