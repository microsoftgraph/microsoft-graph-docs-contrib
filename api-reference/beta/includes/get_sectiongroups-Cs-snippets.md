
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sectionGroups = await graphClient.Me.Onenote.SectionGroups["{id}"].SectionGroups
	.Request()
	.GetAsync();

```