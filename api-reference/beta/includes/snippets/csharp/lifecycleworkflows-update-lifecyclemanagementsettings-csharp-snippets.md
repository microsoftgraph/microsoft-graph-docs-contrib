---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var lifecycleManagementSettings = new Microsoft.Graph.IdentityGovernance.LifecycleManagementSettings
{
	WorkflowScheduleIntervalInHours = 3,
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.context", "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity"}
	}
};

await graphClient.IdentityGovernance.LifecycleWorkflows.Settings
	.Request()
	.UpdateAsync(lifecycleManagementSettings);

```