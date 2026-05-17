---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.agent_collection import AgentCollection
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AgentCollection(
	display_name = "New Display Name",
)

result = await graph_client.agent_registry.agent_collections.by_agent_collection_id('agentCollection-id').patch(request_body)


```