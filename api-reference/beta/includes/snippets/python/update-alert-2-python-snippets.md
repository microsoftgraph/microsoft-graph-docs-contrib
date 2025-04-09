---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.alerts.item.alert_item_request_builder import AlertItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.alert import Alert
from msgraph_beta.generated.models.alert_feedback import AlertFeedback
from msgraph_beta.generated.models.alert_status import AlertStatus
from msgraph_beta.generated.models.security_vendor_information import SecurityVendorInformation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")


result = await graph_client.security.alerts.by_alert_id('alert-id').patch(request_body, request_configuration = request_configuration)


```