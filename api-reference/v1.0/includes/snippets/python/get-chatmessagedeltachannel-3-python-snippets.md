---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.channels.item.messages.delta.delta_request_builder import DeltaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		skiptoken = "8UusBixEHS9UUau6uGcryrA6FpnWwMJbuTYILM1PArHxnZzDVcsHQrijNzCyIVeEauMQsKUfMhNjLWFs1o4sBS_LofJ7xMftZUfec_pijuT6cAk5ugcWCca9RCjK7iVj.DKZ9w4bX9vCR7Sj9P0_qxjLAAPiEZgxlOxxmCLMzHJ4",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.delta.get(request_configuration = request_configuration)


```