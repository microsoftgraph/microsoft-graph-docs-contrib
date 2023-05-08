---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.DeviceManagement.AlertRule
{
	Severity = Microsoft.Graph.Beta.Models.DeviceManagement.RuleSeverityType.Informational,
	Enabled = true,
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
var result = await graphClient.DeviceManagement.Monitoring.AlertRules["{alertRule-id}"].PatchAsync(requestBody);


```