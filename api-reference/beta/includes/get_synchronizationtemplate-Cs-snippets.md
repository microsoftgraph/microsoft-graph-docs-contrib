
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationTemplate = await graphClient.ServicePrincipals["{id}"].Synchronization.Templates
	.Request()
	.GetAsync();

```