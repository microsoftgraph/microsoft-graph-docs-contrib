
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var users = await graphClient.Users
	.Request()
	.Select( e => new {
			 e.DisplayName,
			 e.GivenName,
			 e.PostalCode 
			 })
	.GetAsync();

```