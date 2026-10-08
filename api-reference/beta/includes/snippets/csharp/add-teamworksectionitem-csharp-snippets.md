---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TeamworkSectionItem
{
	Id = "19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Teamwork.Sections["{teamworkSection-id}"].Items.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "\"1742515200\"");
});


```