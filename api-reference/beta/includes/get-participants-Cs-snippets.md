
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var Participant = await graphClient.App.Calls["57DAB8B1894C409AB240BD8BEAE78896"].Participants
	.Request()
	.Header("Authorization","Bearer <TOKEN>")
	.GetAsync();

```