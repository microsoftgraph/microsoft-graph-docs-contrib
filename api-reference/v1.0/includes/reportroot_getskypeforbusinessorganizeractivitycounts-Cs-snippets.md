
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityCounts('D7')
	.Request()
	.GetAsync();

```