---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ProfilePropertySetting
{
	OdataType = "#microsoft.graph.profilePropertySetting",
	DisplayName = "Profile priority config",
	Name = "Profile priority config",
	PrioritizedSourceUrls = new List<string>
	{
		"https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.People.ProfilePropertySettings.PostAsync(requestBody);


```