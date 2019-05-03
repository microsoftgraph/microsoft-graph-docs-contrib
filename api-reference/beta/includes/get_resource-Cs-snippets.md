
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var resources = await graphClient.Me.Onenote.Resources["{id}"]
	.Request()
	.Select( e => new {
			 e.Content 
			 })
	.GetAsync();

var content = resources.Content;

```