
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var orgContact = await graphClient.Contacts
	.Request()
	.GetAsync();

```