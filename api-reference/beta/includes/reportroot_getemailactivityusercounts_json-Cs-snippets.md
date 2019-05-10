
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getEmailActivityUserCounts = await graphClient.Reports.GetEmailActivityUserCounts('D7')
	.Request()
	.GetAsync();

```