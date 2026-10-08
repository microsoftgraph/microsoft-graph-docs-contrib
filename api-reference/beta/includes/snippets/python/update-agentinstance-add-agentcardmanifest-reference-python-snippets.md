---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.agent_instance import AgentInstance
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AgentInstance(
	additional_data = {
			"agent_card_manifest@odata_bind" : "https://graph.microsoft.com/beta/agentRegistry/agentCardManifests('employee-assistant')",
	}
)

result = await graph_client.agent_registry.agent_instances.by_agent_instance_id('agentInstance-id').patch(request_body)


```