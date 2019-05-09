
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userIdsList = new List<String>();
userIdsList.Add( "29f270bb-4d23-4f68-8a57-dc73dc0d4caf" );
userIdsList.Add( "20f91ec9-d140-4d90-9cd9-f618587a1471" );

await graphClient.RiskyUsers
	.ConfirmCompromised(userIdsList)
	.Request()
	.PostAsync()

```