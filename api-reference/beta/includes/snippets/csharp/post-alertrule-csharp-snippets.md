---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.DeviceManagement.AlertRule
{
	Id = "215c55cc-b1c9-4d36-a870-be5778101714",
	DisplayName = "Azure network connection failure impacting Cloud PCs",
	Severity = Microsoft.Graph.Beta.Models.DeviceManagement.RuleSeverityType.Informational,
	IsSystemRule = true,
	Description = "Azure network connection checks have failed and is potentially impacting existing Cloud PCs and blocking the provisioning of new Cloud PCs",
	Enabled = true,
	AlertRuleTemplate = Microsoft.Graph.Beta.Models.DeviceManagement.AlertRuleTemplate.CloudPcOnPremiseNetworkConnectionCheckScenario,
	Threshold = new Microsoft.Graph.Beta.Models.DeviceManagement.RuleThreshold
	{
		Aggregation = Microsoft.Graph.Beta.Models.DeviceManagement.AggregationType.Count,
		Operator = Microsoft.Graph.Beta.Models.DeviceManagement.OperatorType.GreaterOrEqual,
		Target = 90,
	},
	NotificationChannels = new List<Microsoft.Graph.Beta.Models.DeviceManagement.NotificationChannel>
	{
		new Microsoft.Graph.Beta.Models.DeviceManagement.NotificationChannel
		{
			NotificationChannelType = Microsoft.Graph.Beta.Models.DeviceManagement.NotificationChannelType.Portal,
			Receivers = new List<string>
			{
				"",
			},
			NotificationReceivers = new List<NotificationReceiver>
			{
			},
		},
		new Microsoft.Graph.Beta.Models.DeviceManagement.NotificationChannel
		{
			NotificationChannelType = Microsoft.Graph.Beta.Models.DeviceManagement.NotificationChannelType.Email,
			Receivers = new List<string>
			{
				"serena.davis@contoso.com",
			},
			NotificationReceivers = new List<Microsoft.Graph.Beta.Models.DeviceManagement.NotificationReceiver>
			{
				new Microsoft.Graph.Beta.Models.DeviceManagement.NotificationReceiver
				{
					Locale = "en-us",
					ContactInformation = "serena.davis@contoso.com",
				},
			},
		},
	},
};
var result = await graphClient.DeviceManagement.Monitoring.AlertRules.PostAsync(requestBody);


```