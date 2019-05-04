
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Users
	.Request()
	.Select( e => new {
			 e.DisplayName,
			 e.GivenName,
			 e.PostalCode 
			 })
	.GetAsync();

```