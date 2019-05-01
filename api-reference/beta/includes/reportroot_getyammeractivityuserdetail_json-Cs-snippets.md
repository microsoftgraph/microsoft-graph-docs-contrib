
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerActivityUserDetail = await graphClient.Reports.GetYammerActivityUserDetail('D7')
	.Request()
	.GetAsync();

```