---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].TaskReports.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","failedUsersCount","processingStatus","successfulUsersCount","totalUsersCount","unprocessedUsersCount","taskDefinition","taskProcessingResults" };
});


```