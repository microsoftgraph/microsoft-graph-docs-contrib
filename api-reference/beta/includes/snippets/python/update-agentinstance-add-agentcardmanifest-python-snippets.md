---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.agent_instance import AgentInstance
from msgraph_beta.generated.models.agent_card_manifest import AgentCardManifest
from msgraph_beta.generated.models.agent_provider import AgentProvider
from msgraph_beta.generated.models.agent_capabilities import AgentCapabilities
from msgraph_beta.generated.models.agent_extension import AgentExtension
from msgraph_beta.generated.models.agent_extension_params import AgentExtensionParams
from msgraph_beta.generated.models.agent_skill import AgentSkill
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AgentInstance(
	agent_card_manifest = AgentCardManifest(
		owner_ids = [
			"0ef68a76-e247-41dd-947b-41282760a2ac",
		],
		originating_store = "Copilot Studio",
		display_name = "Conditional Access Agent Card",
		description = "Manages organizational conditional access policies",
		icon_url = "https://example.com/icon.png",
		provider = AgentProvider(
			organization = "Test Organization",
			url = "https://test.com",
		),
		protocol_version = "1.0",
		version = "1.0.0",
		documentation_url = "https://example.com/docs",
		capabilities = AgentCapabilities(
			streaming = False,
			push_notifications = False,
			state_transition_history = True,
			extensions = [
				AgentExtension(
					uri = "https://contoso.example.com/a2a/capabilities/secureMessaging",
					description = None,
					required = False,
					params = AgentExtensionParams(
						additional_data = {
								"use_https" : True,
						}
					),
				),
			],
		),
		default_input_modes = [
			"application/json",
		],
		default_output_modes = [
			"application/json",
			"text/html",
		],
		supports_authenticated_extended_card = True,
		skills = [
			AgentSkill(
				id = "threat-detection",
				display_name = "Threat Detection",
				description = "Detect security threats in real-time",
				tags = [
					"security",
					"threat",
					"detection",
				],
				examples = [
					"Analyze this log for threats",
					"Check for malware",
				],
				input_modes = [
					"application/json",
					"text/plain",
				],
				output_modes = [
					"application/json",
					"text/html",
				],
			),
		],
	),
)

result = await graph_client.agent_registry.agent_instances.by_agent_instance_id('agentInstance-id').patch(request_body)


```