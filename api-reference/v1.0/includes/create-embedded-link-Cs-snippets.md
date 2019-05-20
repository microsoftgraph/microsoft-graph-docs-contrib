
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "embed";

await graphClient.Me.Drive.Items["{item-id}"]
	.CreateLink(type,scope)
	.Request()
	.PostAsync()

```