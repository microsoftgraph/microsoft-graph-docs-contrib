---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AlertRule(
	severity = RuleSeverityType.Informational,
	enabled = True,
	threshold = RuleThreshold(
		aggregation = AggregationType.Count,
		operator = OperatorType.GreaterOrEqual,
		target = 90,
	),
	notification_channels = [
		NotificationChannel(
			notification_channel_type = NotificationChannelType.Portal,
			notification_receivers = [
			],
		),
		NotificationChannel(
			notification_channel_type = NotificationChannelType.Email,
			notification_receivers = [
				NotificationReceiver(
					locale = "en-us",
					contact_information = "serena.davis@contoso.com",
				),
			],
		),
	],
	additional_data = {
			"conditions" : [
				{
						"relationship_type" : "or",
						"condition_category" : "azureNetworkConnectionCheckFailures",
						"aggregation" : "count",
						"operator" : "greaterOrEqual",
						"threshold_value" : "90",
				},
			],
	}
)

result = await graph_client.device_management.monitoring.alert_rules.by_alert_rule_id('alertRule-id').patch(request_body)


```