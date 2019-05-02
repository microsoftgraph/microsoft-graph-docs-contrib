
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onenoteSection = new OnenoteSection
{
	DisplayName = "Section name",
};

await graphClient.Me.Onenote.SectionGroups["{id}"].Sections
	.Request()
	.AddAsync(onenoteSection);

```