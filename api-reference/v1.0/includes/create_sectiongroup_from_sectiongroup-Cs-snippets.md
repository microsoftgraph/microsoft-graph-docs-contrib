
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sectionGroup = new SectionGroup
{
	DisplayName = "Section group name",
};

await graphClient.Me.Onenote.SectionGroups["{id}"].SectionGroups
	.Request()
	.AddAsync(sectionGroup);

```