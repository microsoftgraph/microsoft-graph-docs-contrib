---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationModule
{
	DisplayName = "New_Module5 updated",
	Description = "updated for description",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"languageTag" , "en-GB"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].Modules["{educationModule-id}"].PatchAsync(requestBody);


```