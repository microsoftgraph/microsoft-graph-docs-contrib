
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.Messages
	.Request()
	.Select( e => new {
			 e.Sender,
			 e.Subject 
			 })
	.GetAsync();

```