
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessOrganizerActivityMinuteCounts = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityMinuteCounts('D7')
	.Request()
	.GetAsync();

```