---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.agent_instance import AgentInstance
from msgraph_beta.generated.models.agent_interface import AgentInterface
from msgraph_beta.generated.models.agent_card_signature import AgentCardSignature
from msgraph_beta.generated.models.jws_header import JwsHeader
from msgraph_beta.generated.models.agent_card_manifest import AgentCardManifest
from msgraph_beta.generated.models.agent_provider import AgentProvider
from msgraph_beta.generated.models.agent_capabilities import AgentCapabilities
from msgraph_beta.generated.models.agent_extension import AgentExtension
from msgraph_beta.generated.models.agent_extension_params import AgentExtensionParams
from msgraph_beta.generated.models.agent_skill import AgentSkill
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AgentInstance(
	id = "Security Copilot Platform Agent: 00222",
	owner_ids = [
		"daf58b0e-44e1-433c-b6b0-ca70cae320b8",
		"b9108c41-d2d2-4e78-b073-92f57b752bd0",
	],
	managed_by = "719cc904-9700-4e08-9941-fd826cc84c60",
	originating_store = "Microsoft Security Copilot",
	created_by = "d47bffae-411a-4de9-8548-05e79bc01f0d",
	display_name = "Conditional Access Agent",
	source_agent_id = "00222",
	agent_identity_blueprint_id = "d0108c41-d2d2-4e78-b073-92f57b752bd0",
	agent_identity_id = "dd108c41-d2d2-4e78-b073-92f57b752bd0",
	agent_user_id = "ee108c41-d2d2-4e78-b073-92f57b752bd0",
	created_date_time = "2025-01-01T00:00:00.1234567Z",
	last_modified_date_time = "2025-01-01T00:00:00.1234567Z",
	url = "https://conditional-access-agent.example.com/a2a/v1",
	preferred_transport = "JSONRPC",
	additional_interfaces = [
		AgentInterface(
			url = "https://conditional-access-agent.example.com/a2a/v1",
			transport = "JSONRPC",
		),
		AgentInterface(
			url = "https://conditional-access-agent.example.com/a2a/grpc",
			transport = "GRPC",
		),
		AgentInterface(
			url = "https://conditional-access-agent.example.com/a2a/json",
			transport = "HTTP+JSON",
		),
	],
	signatures = [
		AgentCardSignature(
			protected = "eyJhbGciOiJFUzI1NiIsImtpZCI6ImRpZDp3ZWI6Y29udG9zby5leGFtcGxlI2tleS0xIiwidHlwIjoiYWdlbnRjYXJkK2p3cyJ9",
			signature = "xOSim9oMw_CdZM-qDhmwpB5fJcBx5I30yh-FZULd1j9ruPEUBnJzmfCynNfH1KgmJ2B7ulAYc7D2iIb-4Ul-8w",
			header = JwsHeader(
				additional_data = {
						"kid_hint" : "contoso-key-1",
						"nonce" : "f1e9b6c3-2f3a-4a3a-b604-1f9af3f2a9c0",
				}
			),
		),
	],
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

result = await graph_client.agent_registry.agent_instances.post(request_body)


```