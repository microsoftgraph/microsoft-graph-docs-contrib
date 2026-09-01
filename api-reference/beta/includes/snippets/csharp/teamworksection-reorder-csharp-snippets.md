---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.Teamwork.Sections.Reorder;

var requestBody = new ReorderPostRequestBody
{
	SectionsOrder = new List<string>
	{
		"ce274158-f4f5-4ba7-bd18-0b2204dc1691~10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f~QuickViews",
		"a1b2c3d4-e5f6-7890-abcd-ef1234567890",
		"b2c3d4e5-f6a7-8901-bcde-f12345678901",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Teamwork.Sections.Reorder.PostAsReorderPostResponseAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "\"1742515200\"");
});


```