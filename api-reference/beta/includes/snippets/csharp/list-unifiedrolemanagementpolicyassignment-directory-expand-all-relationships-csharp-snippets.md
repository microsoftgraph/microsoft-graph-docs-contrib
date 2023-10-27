---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Policies.RoleManagementPolicyAssignments.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "scopeId eq '/' and scopeType eq 'DirectoryRole' and roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'";
	requestConfiguration.QueryParameters.Expand = new string []{ "policy($expand=rules)" };
});


```