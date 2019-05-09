
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attributeMappingFunctionSchema = await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"].Schema.Functions()
	.Request()
	.GetAsync();

```