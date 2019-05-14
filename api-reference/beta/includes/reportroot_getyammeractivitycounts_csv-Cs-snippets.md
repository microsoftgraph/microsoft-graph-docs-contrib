
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerActivityCounts = await graphClient.Reports.GetYammerActivityCounts('D7')
	.Request()
	.GetAsync();

```