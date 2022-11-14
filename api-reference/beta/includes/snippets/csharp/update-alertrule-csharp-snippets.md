---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alertRule = new Microsoft.Graph.DeviceManagement.AlertRule
{
	Severity = Microsoft.Graph.DeviceManagement.RuleSeverityType.Informational,
	Enabled = true,
	Threshold = new Microsoft.Graph.DeviceManagement.RuleThreshold
	{
		Aggregation = Microsoft.Graph.DeviceManagement.AggregationType.Count,
		Operator = Microsoft.Graph.DeviceManagement.OperatorType.GreaterOrEqual,
		Target = 90
	},
	NotificationChannels = new List<Microsoft.Graph.DeviceManagement.NotificationChannel>()
	{
		new Microsoft.Graph.DeviceManagement.NotificationChannel
		{
			NotificationChannelType = Microsoft.Graph.DeviceManagement.NotificationChannelType.Portal,
			Receivers = new List<String>()
			{
				""
			},
			NotificationReceivers = new List<Microsoft.Graph.DeviceManagement.NotificationReceiver>()
			{
			}
		},
		new Microsoft.Graph.DeviceManagement.NotificationChannel
		{
			NotificationChannelType = Microsoft.Graph.DeviceManagement.NotificationChannelType.Email,
			Receivers = new List<String>()
			{
				"serena.davis@contoso.com"
			},
			NotificationReceivers = new List<Microsoft.Graph.DeviceManagement.NotificationReceiver>()
			{
				new Microsoft.Graph.DeviceManagement.NotificationReceiver
				{
					Locale = "en-us",
					ContactInformation = "serena.davis@contoso.com"
				}
			}
		}
	}
};

await graphClient.DeviceManagement.Monitoring.AlertRules["{deviceManagement.alertRule-id}"]
	.Request()
	.UpdateAsync(alertRule);

```