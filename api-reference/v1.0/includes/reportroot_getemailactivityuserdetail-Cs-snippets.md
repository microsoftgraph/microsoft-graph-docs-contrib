
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetEmailActivityUserDetail('D7')
	.Request()
	.GetAsync();

```