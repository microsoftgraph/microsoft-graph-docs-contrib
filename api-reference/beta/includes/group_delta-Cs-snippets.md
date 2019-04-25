
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Groups.Delta()
	.Request()
	.Header("Prefer","return=minimal")
	.Select( e => new {
			 e.DisplayName,
			 e.Description,
			 e.MailNickname 
			 })
	.GetAsync();

```