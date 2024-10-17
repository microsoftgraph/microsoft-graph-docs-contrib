---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.health_monitoring.alert_configuration import AlertConfiguration
from msgraph_beta.generated.models.health_monitoring.email_notification_configuration import EmailNotificationConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AlertConfiguration(
	email_notification_configurations = [
		EmailNotificationConfiguration(
			group_id = "c5140914-9507-4180-b60c-04d5ec5eddcb",
			is_enabled = True,
		),
	],
)

result = await graph_client.reports.health_monitoring.alert_configurations.by_alert_configuration_id('alertConfiguration-id').patch(request_body)


```