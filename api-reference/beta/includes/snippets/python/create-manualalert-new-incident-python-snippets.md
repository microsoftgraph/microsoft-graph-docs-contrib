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
	title = "Suspicious login from TOR exit node",
	description = "User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.",
	category = "InitialAccess",
	severity = AlertSeverity.High,
	recommended_actions = "Reset user credentials, enable MFA, review recent user activity",
	mitre_techniques = [
		"T1078",
	],
	additional_data = {
			"entity_definitions" : [
				{
						"entity_type" : "user",
						"entity_identifier" : "userPrincipalName",
						"identifier_value" : "john.doe@contoso.com",
						"role" : "impacted",
				},
				{
						"entity_type" : "ip",
						"entity_identifier" : "address",
						"identifier_value" : "185.220.101.50",
						"role" : "related",
				},
			],
	}
)

result = await graph_client.security.alerts_v2.post(request_body)


```