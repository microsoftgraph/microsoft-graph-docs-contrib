---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "principalId","action","roleDefinitionId" };
	requestConfiguration.QueryParameters.Expand = new string []{ "roleDefinition","activatedUsing","principal","targetSchedule" };
});


```