
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Domains["contoso.com"].DomainNameReferences
	.Request()
	.GetAsync();

```