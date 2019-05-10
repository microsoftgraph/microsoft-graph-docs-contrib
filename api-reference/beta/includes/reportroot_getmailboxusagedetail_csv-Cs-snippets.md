
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getMailboxUsageDetail = await graphClient.Reports.GetMailboxUsageDetail('D7')
	.Request()
	.GetAsync();

```