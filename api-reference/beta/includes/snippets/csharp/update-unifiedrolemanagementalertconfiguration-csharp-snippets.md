---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TooManyGlobalAdminsAssignedToTenantAlertConfiguration
{
	OdataType = "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
	IsEnabled = true,
	GlobalAdminCountThreshold = 7,
	PercentageOfGlobalAdminsOutOfRolesThreshold = 70,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.RoleManagementAlerts.AlertConfigurations["{unifiedRoleManagementAlertConfiguration-id}"].PatchAsync(requestBody);


```