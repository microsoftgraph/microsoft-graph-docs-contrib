
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailboxUsageStorage = await graphClient.Reports.GetMailboxUsageStorage('D7')
	.Request()
	.GetAsync();

```