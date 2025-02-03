---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.device_management.alert_rule import AlertRule
from msgraph_beta.generated.models.rule_severity_type import RuleSeverityType
from msgraph_beta.generated.models.device_management.rule_threshold import RuleThreshold
from msgraph_beta.generated.models.aggregation_type import AggregationType
from msgraph_beta.generated.models.operator_type import OperatorType
from msgraph_beta.generated.models.device_management.rule_condition import RuleCondition
from msgraph_beta.generated.models.relationship_type import RelationshipType
from msgraph_beta.generated.models.condition_category import ConditionCategory
from msgraph_beta.generated.models.device_management.notification_channel import NotificationChannel
from msgraph_beta.generated.models.notification_channel_type import NotificationChannelType
from msgraph_beta.generated.models.device_management.notification_receiver import NotificationReceiver
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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