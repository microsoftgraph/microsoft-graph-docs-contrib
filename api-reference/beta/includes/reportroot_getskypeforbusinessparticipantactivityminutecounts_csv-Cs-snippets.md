
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skypeForBusinessParticipantActivityMinuteCounts = await graphClient.Reports.GetSkypeForBusinessParticipantActivityMinuteCounts('D7')
	.Request()
	.GetAsync();

```