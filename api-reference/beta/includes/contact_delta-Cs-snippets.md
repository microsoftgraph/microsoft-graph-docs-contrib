
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = await graphClient.Me.ContactFolders["{id}"].Contacts.Delta()
	.Request()
	.Select( e => new {
			 e.DisplayName 
			 })
	.GetAsync();

```