---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleManagementAlert
{
	IsActive = false,
};
var result = await graphClient.IdentityGovernance.RoleManagementAlerts.Alerts["{unifiedRoleManagementAlert-id}"].PatchAsync(requestBody);


```