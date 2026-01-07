---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new UnifiedRoleAssignmentMultiple
{
	OdataType = "#microsoft.graph.unifiedRoleAssignmentMultiple",
	DisplayName = "Example role assignment",
	RoleDefinitionId = "b5c08161-a7af-481c-ace2-a20a69a48fb1",
	PrincipalIds = new List<string>
	{
		"8e811502-ebda-4782-8f81-071d17f0f892",
		"30e3492f-964c-4d73-88c6-986a53c6e2a0",
	},
	AppScopeIds = new List<string>
	{
		"Mdc",
		"/CloudSet/123",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.RoleManagement.Defender.RoleAssignments.PostAsync(requestBody);


```