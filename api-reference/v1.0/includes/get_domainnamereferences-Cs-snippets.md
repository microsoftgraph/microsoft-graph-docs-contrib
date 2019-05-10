
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domainNameReferences = await graphClient.Domains["{domain-name}"].DomainNameReferences
	.Request()
	.GetAsync();

```