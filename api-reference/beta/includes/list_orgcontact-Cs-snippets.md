
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contacts = await graphClient.Contacts
	.Request()
	.GetAsync();

```