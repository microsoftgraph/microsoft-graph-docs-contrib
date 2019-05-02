
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profilePhoto = await graphClient.Groups["{id}"].Photos
	.Request()
	.GetAsync();

```