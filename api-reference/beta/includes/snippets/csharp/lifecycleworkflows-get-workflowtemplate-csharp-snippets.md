---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflowTemplate = await graphClient.IdentityGovernance.LifecycleWorkflows.WorkflowTemplates["{identityGovernance.workflowTemplate-id}"]
	.Request()
	.GetAsync();

```