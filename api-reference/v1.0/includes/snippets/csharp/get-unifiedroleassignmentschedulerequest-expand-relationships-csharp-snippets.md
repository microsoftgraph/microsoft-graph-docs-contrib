---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests["{unifiedRoleAssignmentScheduleRequest-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "principalId","action","roleDefinitionId" };
	requestConfiguration.QueryParameters.Expand = new string []{ "roleDefinition","activatedUsing","principal","targetSchedule" };
});


```