
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var Stream = "Binary data for the image"

await graphClient.Me.Photo.Content
	.Request()
	.PutAsync(Stream);

```