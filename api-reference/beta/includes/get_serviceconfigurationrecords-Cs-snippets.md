
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var serviceConfigurationRecords = await graphClient.Domains["contoso.com"].ServiceConfigurationRecords
	.Request()
	.GetAsync();

```