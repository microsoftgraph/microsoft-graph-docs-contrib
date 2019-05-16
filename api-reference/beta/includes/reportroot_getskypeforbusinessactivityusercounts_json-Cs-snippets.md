
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessActivityUserCounts('D7')
	.Request()
	.GetAsync();

```