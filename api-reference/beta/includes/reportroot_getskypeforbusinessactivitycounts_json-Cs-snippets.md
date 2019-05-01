
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skypeForBusinessActivityCounts = await graphClient.Reports.GetSkypeForBusinessActivityCounts('D7')
	.Request()
	.GetAsync();

```