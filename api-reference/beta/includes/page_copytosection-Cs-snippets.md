
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var id = "id-value";

var groupId = "groupId-value";

await graphClient.Me.Onenote.Pages["{id}"]
	.CopyToSection(id,groupId,siteCollectionId,siteId)
	.Request()
	.PostAsync()

```