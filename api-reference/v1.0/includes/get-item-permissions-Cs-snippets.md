
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permission = await graphClient.Me.Drive.Items["{item-id}"].Permissions
	.Request()
	.GetAsync();

```