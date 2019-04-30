
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skypeForBusinessActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessActivityUserCounts('D7')
	.Request()
	.GetAsync();

```