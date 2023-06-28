---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedEBookAssignment
{
	OdataType = "#microsoft.graph.managedEBookAssignment",
	Target = new AllLicensedUsersAssignmentTarget
	{
		OdataType = "microsoft.graph.allLicensedUsersAssignmentTarget",
	},
	InstallIntent = InstallIntent.Required,
};
var result = await graphClient.DeviceAppManagement.ManagedEBooks["{managedEBook-id}"].Assignments.PostAsync(requestBody);


```