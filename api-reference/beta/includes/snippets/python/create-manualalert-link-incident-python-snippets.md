---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.alert import Alert
from msgraph_beta.generated.models.alert_severity import AlertSeverity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Alert(
	odata_type = "#microsoft.graph.security.manualAlert",
	title = "Malicious file detected on device",
	description = "Sandbox analysis revealed malicious behavior in downloaded file.",
	category = "Execution",
	severity = AlertSeverity.High,
	recommended_actions = "Isolate device, remove file, scan for additional IOCs",
	additional_data = {
			"link_to_incident" : 28282,
			"entity_definitions" : [
				{
						"entity_type" : "file",
						"entity_identifier" : "sha256",
						"identifier_value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
						"role" : "related",
				},
				{
						"entity_type" : "device",
						"entity_identifier" : "deviceName",
						"identifier_value" : "DESKTOP-VICTIM01",
						"role" : "impacted",
				},
			],
	}
)

result = await graph_client.security.alerts_v2.post(request_body)


```