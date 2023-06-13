---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Onenote.SectionGroups.Item.SectionGroups.SectionGroupsPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"displayName" , "Section group name"
		},
	},
};
await graphClient.Me.Onenote.SectionGroups["{sectionGroup-id}"].SectionGroups.PostAsync(requestBody);


```