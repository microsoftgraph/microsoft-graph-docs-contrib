---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnenoteSection
{
	DisplayName = "Section name",
};
var result = await graphClient.Me.Onenote.SectionGroups["{sectionGroup-id}"].Sections.PostAsync(requestBody);


```