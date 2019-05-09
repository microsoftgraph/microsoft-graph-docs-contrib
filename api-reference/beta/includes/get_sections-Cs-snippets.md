
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onenoteSection = await graphClient.Me.Onenote.SectionGroups["{id}"].Sections
	.Request()
	.GetAsync();

```