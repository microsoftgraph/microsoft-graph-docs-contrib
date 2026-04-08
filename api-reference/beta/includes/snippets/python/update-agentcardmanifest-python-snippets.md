---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.agent_card_manifest import AgentCardManifest
from msgraph_beta.generated.models.agent_provider import AgentProvider
from msgraph_beta.generated.models.agent_capabilities import AgentCapabilities
from msgraph_beta.generated.models.security_schemes import SecuritySchemes
from msgraph_beta.generated.models.security_requirement import SecurityRequirement
from msgraph_beta.generated.models.agent_skill import AgentSkill
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AgentCardManifest(
	odata_type = "#microsoft.graph.agentCardManifest",
	owner_ids = [
		"String",
	],
	managed_by = "String",
	originating_store = "String",
	created_by = "String",
	protocol_version = "String",
	display_name = "String",
	description = "String",
	icon_url = "String",
	provider = AgentProvider(
		odata_type = "microsoft.graph.agentProvider",
	),
	version = "String",
	documentation_url = "String",
	capabilities = AgentCapabilities(
		odata_type = "microsoft.graph.agentCapabilities",
	),
	security_schemes = SecuritySchemes(
		odata_type = "microsoft.graph.securitySchemes",
	),
	security = [
		SecurityRequirement(
			odata_type = "microsoft.graph.securityRequirement",
		),
	],
	default_input_modes = [
		"String",
	],
	default_output_modes = [
		"String",
	],
	skills = [
		AgentSkill(
			odata_type = "microsoft.graph.agentSkill",
		),
	],
	supports_authenticated_extended_card = Boolean,
)

result = await graph_client.agent_registry.agent_card_manifests.by_agent_card_manifest_id('agentCardManifest-id').patch(request_body)


```