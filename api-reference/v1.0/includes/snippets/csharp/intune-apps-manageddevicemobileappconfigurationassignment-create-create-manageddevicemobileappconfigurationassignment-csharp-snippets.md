---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedDeviceMobileAppConfigurationAssignment
{
	OdataType = "#microsoft.graph.managedDeviceMobileAppConfigurationAssignment",
	Target = new AllLicensedUsersAssignmentTarget
	{
		OdataType = "microsoft.graph.allLicensedUsersAssignmentTarget",
	},
};
var result = await graphClient.DeviceAppManagement.MobileAppConfigurations["{managedDeviceMobileAppConfiguration-id}"].Assignments.PostAsync(requestBody);


```