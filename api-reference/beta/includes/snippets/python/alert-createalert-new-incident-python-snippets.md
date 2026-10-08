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
		title = "Unauthorized access attempt",
		severity = AlertSeverity.High,
		description = "Multiple failed login attempts from an unusual location.",
		category = "InitialAccess",
		mitre_techniques = [
			"T1078",
		],
		is_excluded_from_correlation = False,
		entity_definitions = [
			EntityDefinition(
				entity_type = ManualAlertEntityType.User,
				entity_identifier = "userPrincipalName",
				identifier_value = "admin@contoso.com",
				role = EntityDefinitionInputRole.Impacted,
			),
			EntityDefinition(
				entity_type = ManualAlertEntityType.Ip,
				entity_identifier = "address",
				identifier_value = "198.51.100.42",
				role = EntityDefinitionInputRole.Related,
			),
		],
	),
)

result = await graph_client.security.alerts_v2.microsoft_graph_security_create_alert.post(request_body)


```