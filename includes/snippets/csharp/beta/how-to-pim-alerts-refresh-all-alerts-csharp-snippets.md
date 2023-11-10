---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.RoleManagementAlerts.Alerts.Refresh;

var requestBody = new RefreshPostRequestBody
{
	ScopeId = "/",
	ScopeType = "DirectoryRole",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.RoleManagementAlerts.Alerts.Refresh.PostAsync(requestBody);


```