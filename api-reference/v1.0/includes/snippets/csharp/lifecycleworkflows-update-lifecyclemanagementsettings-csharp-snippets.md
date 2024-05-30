---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.IdentityGovernance;
using Microsoft.Graph.Models;

var requestBody = new LifecycleManagementSettings
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Settings.PatchAsync(requestBody);


```