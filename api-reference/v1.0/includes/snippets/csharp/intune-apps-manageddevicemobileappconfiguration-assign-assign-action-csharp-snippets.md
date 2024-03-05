---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceAppManagement.MobileAppConfigurations.Item.Assign;
using Microsoft.Graph.Models;

var requestBody = new AssignPostRequestBody
{
	Assignments = new List<ManagedDeviceMobileAppConfigurationAssignment>
	{
		new ManagedDeviceMobileAppConfigurationAssignment
		{
			OdataType = "#microsoft.graph.managedDeviceMobileAppConfigurationAssignment",
			Id = "4df81c9c-1c9c-4df8-9c1c-f84d9c1cf84d",
			Target = new AllLicensedUsersAssignmentTarget
			{
				OdataType = "microsoft.graph.allLicensedUsersAssignmentTarget",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceAppManagement.MobileAppConfigurations["{managedDeviceMobileAppConfiguration-id}"].Assign.PostAsync(requestBody);


```