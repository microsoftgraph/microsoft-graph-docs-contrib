
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sectionGroup = await graphClient.Me.Onenote.SectionGroups["{id}"].SectionGroups
	.Request()
	.GetAsync();

```