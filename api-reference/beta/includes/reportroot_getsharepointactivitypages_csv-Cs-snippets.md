
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointActivityPages = await graphClient.Reports.GetSharePointActivityPages('D7')
	.Request()
	.GetAsync();

```