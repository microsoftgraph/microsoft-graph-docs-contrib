---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TeamworkSection
{
	DisplayName = "Project Alpha",
	DisplayIcon = new SectionDisplayIcon
	{
		IconType = "🚀",
	},
	SortType = SectionSortType.MostRecent,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Teamwork.Sections.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "\"1742515200\"");
});


```