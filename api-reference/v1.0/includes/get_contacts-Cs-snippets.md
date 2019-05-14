
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contacts = await graphClient.Me.Contacts
	.Request()
	.GetAsync();

```