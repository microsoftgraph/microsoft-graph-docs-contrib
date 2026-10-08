---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new EngagementRoleMember
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01')"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.EmployeeExperience.Roles["{engagementRole-id}"].Members.PostAsync(requestBody);


```