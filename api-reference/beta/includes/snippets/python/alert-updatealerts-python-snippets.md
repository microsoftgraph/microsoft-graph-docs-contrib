---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.alerts.update_alerts.update_alerts_post_request_body import UpdateAlertsPostRequestBody
from msgraph.generated.models.alert import Alert
from msgraph.generated.models.alert_feedback import AlertFeedback
from msgraph.generated.models.alert_status import AlertStatus
from msgraph.generated.models.security_vendor_information import SecurityVendorInformation

graph_client = GraphServiceClient(credentials, scopes)

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