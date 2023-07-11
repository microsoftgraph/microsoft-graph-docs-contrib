---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.IdentityGovernance.LifecycleManagementSettings
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
			"@odata.context" , "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity"
		},
	},
};
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Settings.PatchAsync(requestBody);


```