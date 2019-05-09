
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var functions = await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"].Schema.Functions()
	.Request()
	.GetAsync();

```