
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetOffice365ActivationsUserCounts()
	.Request()
	.GetAsync();

```