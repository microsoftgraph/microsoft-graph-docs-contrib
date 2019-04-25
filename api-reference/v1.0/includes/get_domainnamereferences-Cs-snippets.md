
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Domains["{domain-name}"].DomainNameReferences
	.Request()
	.GetAsync();

```