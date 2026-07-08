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
	title = "Malicious file detected on device",
	description = "Sandbox analysis revealed malicious behavior in downloaded file.",
	category = "Execution",
	severity = AlertSeverity.High,
	recommended_actions = "Isolate device, remove file, scan for additional IOCs",
	link_to_incident = 28282,
	entity_definitions = [
		EntityDefinitionInput(
			entity_type = ManualAlertEntityType.File,
			entity_identifier = "sha256",
			identifier_value = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
			role = EntityDefinitionInputRole.Related,
		),
		EntityDefinitionInput(
			entity_type = ManualAlertEntityType.Device,
			entity_identifier = "deviceName",
			identifier_value = "DESKTOP-VICTIM01",
			role = EntityDefinitionInputRole.Impacted,
		),
	],
)

result = await graph_client.security.alerts_v2.post(request_body)


```