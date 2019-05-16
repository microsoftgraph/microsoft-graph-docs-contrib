
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getMailboxUsageQuotaStatusMailboxCounts = await graphClient.Reports.GetMailboxUsageQuotaStatusMailboxCounts('D7')
	.Request()
	.GetAsync();

```