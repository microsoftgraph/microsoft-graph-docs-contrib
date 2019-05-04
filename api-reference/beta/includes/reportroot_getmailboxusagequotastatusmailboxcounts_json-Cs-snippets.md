
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailboxUsageQuotaStatusMailboxCounts = await graphClient.Reports.GetMailboxUsageQuotaStatusMailboxCounts('D7')
	.Request()
	.GetAsync();

```