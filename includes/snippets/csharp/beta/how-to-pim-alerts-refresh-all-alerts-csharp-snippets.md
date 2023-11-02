---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.RoleManagementAlerts.Alerts.Refresh.RefreshPostRequestBody
{
	ScopeId = "/",
	ScopeType = "DirectoryRole",
};
await graphClient.IdentityGovernance.RoleManagementAlerts.Alerts.Refresh.PostAsync(requestBody);


```