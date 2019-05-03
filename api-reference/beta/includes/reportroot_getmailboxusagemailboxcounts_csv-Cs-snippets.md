
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailboxUsageMailboxCounts = await graphClient.Reports.GetMailboxUsageMailboxCounts('D7')
	.Request()
	.GetAsync();

```