---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ManagedDeviceMobileAppConfigurationAssignment
{
	OdataType = "#microsoft.graph.managedDeviceMobileAppConfigurationAssignment",
	Target = new AllLicensedUsersAssignmentTarget
	{
		OdataType = "microsoft.graph.allLicensedUsersAssignmentTarget",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceAppManagement.MobileAppConfigurations["{managedDeviceMobileAppConfiguration-id}"].Assignments.PostAsync(requestBody);


```