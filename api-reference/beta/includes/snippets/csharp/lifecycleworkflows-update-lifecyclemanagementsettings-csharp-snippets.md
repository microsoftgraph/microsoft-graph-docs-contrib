---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IdentityGovernance.LifecycleManagementSettings
{
	WorkflowScheduleIntervalInHours = 3,
	EmailSettings = new EmailSettings
	{
		SenderDomain = "ContosoIndustries.net",
		UseCompanyBranding = true,
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.context" , "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity"
		},
	},
};
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Settings.PatchAsync(requestBody);


```