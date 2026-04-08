---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.agent_collection import AgentCollection
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AgentCollection(
	id = "Security Copilot Platform Workspace: 001",
	owner_ids = [
		"daf58b0e-44e1-433c-b6b0-ca70cae320b8",
		"b9108c41-d2d2-4e78-b073-92f57b752bd0",
	],
	managed_by = "719cc904-9700-4e08-9941-fd826cc84c60",
	originating_store = "Microsoft Security Copilot",
	created_by = "d47bffae-411a-4de9-8548-05e79bc01f0d",
	display_name = "Conditional Access Agents",
	description = "A collection of agents to manage your organizations conditional access policies",
)

result = await graph_client.agent_registry.agent_collections.post(request_body)


```