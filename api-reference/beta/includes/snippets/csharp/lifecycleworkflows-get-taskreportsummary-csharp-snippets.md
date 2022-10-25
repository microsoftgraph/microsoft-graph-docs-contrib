---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taskReportSummary = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].TaskReports
	.Summary(2022-08-19T00:00:00.000Z,2022-08-25T00:33:31.533Z)
	.Request()
	.GetAsync();

```