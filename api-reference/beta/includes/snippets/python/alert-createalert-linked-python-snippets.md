---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.alerts_v2.microsoft_graph_security_create_alert.create_alert_post_request_body import CreateAlertPostRequestBody
from msgraph_beta.generated.models.security.create_alert_input import CreateAlertInput
from msgraph_beta.generated.models.alert_severity import AlertSeverity
from msgraph_beta.generated.models.security.entity_definition import EntityDefinition
from msgraph_beta.generated.models.manual_alert_entity_type import ManualAlertEntityType
from msgraph_beta.generated.models.entity_definition_input_role import EntityDefinitionInputRole
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CreateAlertPostRequestBody(
	create_alert_input = CreateAlertInput(
		title = "Suspicious PowerShell activity",
		severity = AlertSeverity.Medium,
		description = "PowerShell script execution was identified during analyst triage.",
		category = "Execution",
		recommended_actions = "Review the script contents and isolate the affected device.",
		mitre_techniques = [
			"T1059.001",
		],
		link_to_incident = 42,
		is_excluded_from_correlation = False,
		entity_definitions = [
			EntityDefinition(
				entity_type = ManualAlertEntityType.Device,
				entity_identifier = "deviceId",
				identifier_value = "d1234567-abcd-4f01-8abc-890123456789",
				role = EntityDefinitionInputRole.Impacted,
			),
		],
	),
)

result = await graph_client.security.alerts_v2.microsoft_graph_security_create_alert.post(request_body)


```