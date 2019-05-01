
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domainDnsRecord = await graphClient.Domains["contoso.com"].ServiceConfigurationRecords
	.Request()
	.GetAsync();

```