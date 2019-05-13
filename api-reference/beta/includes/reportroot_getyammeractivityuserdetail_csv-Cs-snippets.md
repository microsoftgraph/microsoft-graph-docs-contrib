
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerActivityUserDetail = await graphClient.Reports.GetYammerActivityUserDetail('D7')
	.Request()
	.GetAsync();

```