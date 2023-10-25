---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TooManyGlobalAdminsAssignedToTenantAlertConfiguration
{
	OdataType = "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
	IsEnabled = true,
	GlobalAdminCountThreshold = 4,
	PercentageOfGlobalAdminsOutOfRolesThreshold = 10,
};
var result = await graphClient.IdentityGovernance.RoleManagementAlerts.AlertConfigurations["{unifiedRoleManagementAlertConfiguration-id}"].PatchAsync(requestBody);


```