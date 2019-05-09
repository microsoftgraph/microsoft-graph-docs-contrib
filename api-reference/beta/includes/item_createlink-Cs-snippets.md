
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "view";

var scope = "anonymous";

await graphClient.Me.Drive.Items["{itemId}"]
	.CreateLink(type,scope,expirationDateTime,password,message,recipientsList)
	.Request()
	.PostAsync()

```