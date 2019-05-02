
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365ActivationCounts = await graphClient.Reports.GetOffice365ActivationCounts()
	.Request()
	.GetAsync();

```