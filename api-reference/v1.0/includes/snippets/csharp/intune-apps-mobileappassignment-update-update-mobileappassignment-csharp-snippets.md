---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MobileAppAssignment
{
	OdataType = "#microsoft.graph.mobileAppAssignment",
	Intent = InstallIntent.Required,
	Target = new AllLicensedUsersAssignmentTarget
	{
		OdataType = "microsoft.graph.allLicensedUsersAssignmentTarget",
	},
	Settings = new WindowsUniversalAppXAppAssignmentSettings
	{
		OdataType = "microsoft.graph.windowsUniversalAppXAppAssignmentSettings",
		UseDeviceContext = true,
	},
};
var result = await graphClient.DeviceAppManagement.MobileApps["{mobileApp-id}"].Assignments["{mobileAppAssignment-id}"].PatchAsync(requestBody);


```