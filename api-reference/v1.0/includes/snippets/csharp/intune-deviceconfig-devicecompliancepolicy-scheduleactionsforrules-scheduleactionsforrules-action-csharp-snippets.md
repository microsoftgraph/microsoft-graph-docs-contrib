---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.DeviceCompliancePolicies.Item.ScheduleActionsForRules;
using Microsoft.Graph.Models;

var requestBody = new ScheduleActionsForRulesPostRequestBody
{
	DeviceComplianceScheduledActionForRules = new List<DeviceComplianceScheduledActionForRule>
	{
		new DeviceComplianceScheduledActionForRule
		{
			OdataType = "#microsoft.graph.deviceComplianceScheduledActionForRule",
			Id = "f0075d5e-5d5e-f007-5e5d-07f05e5d07f0",
			RuleName = "Rule Name value",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.DeviceCompliancePolicies["{deviceCompliancePolicy-id}"].ScheduleActionsForRules.PostAsync(requestBody);


```