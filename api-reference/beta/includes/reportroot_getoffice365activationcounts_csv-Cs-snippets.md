
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365ActivationCounts = await graphClient.Reports.GetOffice365ActivationCounts()
	.Request()
	.GetAsync();

```