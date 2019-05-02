
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var administrativeUnit = await graphClient.AdministrativeUnits
	.Request()
	.GetAsync();

```