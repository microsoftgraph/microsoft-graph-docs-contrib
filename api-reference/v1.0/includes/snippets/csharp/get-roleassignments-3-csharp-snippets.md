---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.RoleManagement.EntitlementManagement.RoleAssignments.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "appScopeId eq '/AccessPackageCatalog/4cee616b-fdf9-4890-9d10-955e0ccb12bc'";
	requestConfiguration.QueryParameters.Expand = new string []{ "principal" };
});


```