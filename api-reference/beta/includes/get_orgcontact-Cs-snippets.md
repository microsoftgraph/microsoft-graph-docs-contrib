
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var orgContact = await graphClient.Contacts["{id}"]
	.Request()
	.GetAsync();

```