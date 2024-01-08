---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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