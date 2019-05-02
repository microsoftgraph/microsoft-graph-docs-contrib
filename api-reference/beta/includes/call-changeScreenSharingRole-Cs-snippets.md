
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var role = "viewer";

await graphClient.App.Calls["{id}"]
	.ChangeScreenSharingRole(role)
	.Request()
	.PostAsync()

```