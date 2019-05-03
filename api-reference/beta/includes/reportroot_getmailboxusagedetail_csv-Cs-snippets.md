
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailboxUsageDetail = await graphClient.Reports.GetMailboxUsageDetail('D7')
	.Request()
	.GetAsync();

```