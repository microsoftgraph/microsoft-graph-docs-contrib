
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var transitiveMemberOf = await graphClient.Devices["{id}"].TransitiveMemberOf
	.Request()
	.GetAsync();

```