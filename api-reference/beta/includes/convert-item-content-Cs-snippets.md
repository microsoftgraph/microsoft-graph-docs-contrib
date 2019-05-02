
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var items = await graphClient.Drive.Items["{item-id}"]
	.Request()
	.Select( e => new {
			 e.Content 
			 })
	.GetAsync();

var content = items.Content;

```