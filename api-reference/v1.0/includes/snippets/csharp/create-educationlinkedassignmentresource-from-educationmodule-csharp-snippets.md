---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new EducationModuleResource
{
	Resource = new EducationLinkedAssignmentResource
	{
		OdataType = "#microsoft.graph.educationLinkedAssignmentResource",
		DisplayName = "2024-01-19T17_54_38_711Z",
		Url = "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b6a1d277-fed7-4345-940e-3f2ce13eb737",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].Modules["{educationModule-id}"].Resources.PostAsync(requestBody);


```