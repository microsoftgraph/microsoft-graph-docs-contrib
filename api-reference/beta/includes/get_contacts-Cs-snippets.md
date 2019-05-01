
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = await graphClient.Me.Contacts
	.Request()
	.Select( e => new {
			 e.DisplayName,
			 e.EmailAddresses 
			 })
	.GetAsync();

```