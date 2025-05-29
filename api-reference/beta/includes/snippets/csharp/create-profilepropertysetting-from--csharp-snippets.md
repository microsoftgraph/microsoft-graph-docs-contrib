---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ProfilePropertySetting
{
	OdataType = "#microsoft.graph.profilePropertySetting",
	PrioritizedSourceUrls = new List<string>
	{
		"https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.People.ProfilePropertySettings.PostAsync(requestBody);


```