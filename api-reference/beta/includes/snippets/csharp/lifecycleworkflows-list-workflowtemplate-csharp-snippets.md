---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflowTemplates = await graphClient.IdentityGovernance.LifecycleWorkflows.WorkflowTemplates
	.Request()
	.GetAsync();

```