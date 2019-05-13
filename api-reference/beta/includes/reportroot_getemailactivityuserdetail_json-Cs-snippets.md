
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getEmailActivityUserDetail = await graphClient.Reports.GetEmailActivityUserDetail('D7')
	.Request()
	.GetAsync();

```