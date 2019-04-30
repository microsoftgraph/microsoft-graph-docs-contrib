
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var site = await graphClient.Sites
	.Request()
	.Filter("siteCollection/root ne null")
	.GetAsync();

```