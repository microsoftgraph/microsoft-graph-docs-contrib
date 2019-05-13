
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domainNameReferences = await graphClient.Domains["contoso.com"].DomainNameReferences
	.Request()
	.GetAsync();

```