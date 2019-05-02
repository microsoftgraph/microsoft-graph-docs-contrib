
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365ActivationsUserCounts = await graphClient.Reports.GetOffice365ActivationsUserCounts()
	.Request()
	.GetAsync();

```