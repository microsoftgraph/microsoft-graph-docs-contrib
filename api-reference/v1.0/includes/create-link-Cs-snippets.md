
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "view";

var scope = "anonymous";

await graphClient.Me.Drive.Items["{item-id}"]
	.CreateLink(type,scope)
	.Request()
	.PostAsync()

```