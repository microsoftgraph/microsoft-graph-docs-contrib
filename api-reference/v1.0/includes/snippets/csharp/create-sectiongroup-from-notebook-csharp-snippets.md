---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SectionGroup
{
	DisplayName = "Section group name",
};
var result = await graphClient.Me.Onenote.Notebooks["{notebook-id}"].SectionGroups.PostAsync(requestBody);


```