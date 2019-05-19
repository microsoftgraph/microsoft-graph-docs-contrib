
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Users.Delta()
	.Request()
	.Header("Prefer","return=minimal")
	.Select( e => new {
			 e.DisplayName,
			 e.JobTitle,
			 e.MobilePhone 
			 })
	.GetAsync();

```