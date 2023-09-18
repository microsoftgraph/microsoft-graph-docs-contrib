---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

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
			receivers = [
				"",
			]
			notification_receivers = [
			]
		),
		NotificationChannel(
			notification_channel_type = NotificationChannelType.Email,
			receivers = [
				"serena.davis@contoso.com",
			]
			notification_receivers = [
				NotificationReceiver(
					locale = "en-us",
					contact_information = "serena.davis@contoso.com",
				),
			]
		),
	]
)

result = await graph_client.device_management.monitoring.alert_rules.by_alert_rule_id('alertRule-id').patch(body = request_body)


```