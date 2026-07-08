---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.manual_alert import ManualAlert
from msgraph_beta.generated.models.alert_severity import AlertSeverity
from msgraph_beta.generated.models.security.entity_definition_input import EntityDefinitionInput
from msgraph_beta.generated.models.manual_alert_entity_type import ManualAlertEntityType
from msgraph_beta.generated.models.entity_definition_input_role import EntityDefinitionInputRole
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ManualAlert(
	odata_type = "#microsoft.graph.security.manualAlert",
	title = "Suspicious login from TOR exit node",
	description = "User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.",
	category = "InitialAccess",
	severity = AlertSeverity.High,
	recommended_actions = "Reset user credentials, enable MFA, review recent user activity",
	mitre_techniques = [
		"T1078",
	],
	entity_definitions = [
		EntityDefinitionInput(
			entity_type = ManualAlertEntityType.User,
			entity_identifier = "userPrincipalName",
			identifier_value = "john.doe@contoso.com",
			role = EntityDefinitionInputRole.Impacted,
		),
		EntityDefinitionInput(
			entity_type = ManualAlertEntityType.Ip,
			entity_identifier = "address",
			identifier_value = "185.220.101.50",
			role = EntityDefinitionInputRole.Related,
		),
	],
)

result = await graph_client.security.alerts_v2.post(request_body)


```