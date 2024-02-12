---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.alerts.item.alert_item_request_builder import AlertItemRequestBuilder
from msgraph.generated.models.alert import Alert
from msgraph.generated.models.security_vendor_information import SecurityVendorInformation

graph_client = GraphServiceClient(credentials, scopes)

request_body = Alert(
	assigned_to = "String",
	closed_date_time = "String (timestamp)",
	comments = [
		"String",
	],
	feedback = AlertFeedback.Unknown,
	status = AlertStatus.Unknown,
	tags = [
		"String",
	],
	vendor_information = SecurityVendorInformation(
		provider = "String",
		vendor = "String",
	),
)

request_configuration = AlertItemRequestBuilder.AlertItemRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")


result = await graph_client.security.alerts.by_alert_id('alert-id').patch(request_body, request_configuration = request_configuration)


```