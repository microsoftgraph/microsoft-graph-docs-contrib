---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Policies.RoleManagementPolicyAssignments.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "scopeId eq '/' and scopeType eq 'Directory'";
});


```