
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityMinuteCounts('D7')
	.Request()
	.GetAsync();

```