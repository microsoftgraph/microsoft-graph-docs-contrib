---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceAppManagement.ManagedEBooks.Item.Assign;
using Microsoft.Graph.Models;

var requestBody = new AssignPostRequestBody
{
	ManagedEBookAssignments = new List<ManagedEBookAssignment>
	{
		new ManagedEBookAssignment
		{
			OdataType = "#microsoft.graph.managedEBookAssignment",
			Id = "ae8b0d27-0d27-ae8b-270d-8bae270d8bae",
			Target = new AllLicensedUsersAssignmentTarget
			{
				OdataType = "microsoft.graph.allLicensedUsersAssignmentTarget",
			},
			InstallIntent = InstallIntent.Required,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceAppManagement.ManagedEBooks["{managedEBook-id}"].Assign.PostAsync(requestBody);


```