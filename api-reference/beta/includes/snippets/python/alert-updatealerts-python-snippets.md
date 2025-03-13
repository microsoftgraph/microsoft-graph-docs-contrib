---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.alerts.update_alerts.update_alerts_post_request_body import UpdateAlertsPostRequestBody
from msgraph_beta.generated.models.alert import Alert
from msgraph_beta.generated.models.alert_feedback import AlertFeedback
from msgraph_beta.generated.models.alert_status import AlertStatus
from msgraph_beta.generated.models.security_vendor_information import SecurityVendorInformation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdateAlertsPostRequestBody(
	value = [
		Alert(
			assigned_to = "String",
			closed_date_time = "String (timestamp)",
			comments = [
				"String",
			],
			feedback = AlertFeedback(
				additional_data = {
						"@odata_type" : "microsoft.graph.alertFeedback",
				}
			),
			id = "String (identifier)",
			status = AlertStatus(
				additional_data = {
						"@odata_type" : "microsoft.graph.alertStatus",
				}
			),
			tags = [
				"String",
			],
			vendor_information = SecurityVendorInformation(
				provider = "String",
				vendor = "String",
			),
		),
	],
)

result = await graph_client.security.alerts.update_alerts.post(request_body)


```