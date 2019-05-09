
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filterOperatorSchema = await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"].Schema.FilterOperators()
	.Request()
	.GetAsync();

```