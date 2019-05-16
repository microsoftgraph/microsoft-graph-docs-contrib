
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetSkypeForBusinessParticipantActivityCounts('D7')
	.Request()
	.GetAsync();

```