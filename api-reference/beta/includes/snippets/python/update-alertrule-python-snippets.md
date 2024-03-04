---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.alert_rule import AlertRule
from msgraph.generated.models.rule_threshold import RuleThreshold
from msgraph.generated.models.rule_condition import RuleCondition
from msgraph.generated.models.notification_channel import NotificationChannel
from msgraph.generated.models.notification_receiver import NotificationReceiver

graph_client = GraphServiceClient(credentials, scopes)

request_body = AlertRule(
	severity = RuleSeverityType.Informational,
	enabled = True,
	threshold = RuleThreshold(
		aggregation = AggregationType.Count,
		operator = OperatorType.GreaterOrEqual,
		target = 90,
	),
	conditions = [
		RuleCondition(
			relationship_type = RelationshipType.Or,
			condition_category = ConditionCategory.AzureNetworkConnectionCheckFailures,
			aggregation = AggregationType.Count,
			operator = OperatorType.GreaterOrEqual,
			threshold_value = "90",
		),
	],
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
)

result = await graph_client.device_management.monitoring.alert_rules.by_alert_rule_id('alertRule-id').patch(request_body)


```