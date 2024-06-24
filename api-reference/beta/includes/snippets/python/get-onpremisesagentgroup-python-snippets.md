---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.on_premises_publishing_profiles.item.agent_groups.item.on_premises_agent_group_item_request_builder import OnPremisesAgentGroupItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = OnPremisesAgentGroupItemRequestBuilder.OnPremisesAgentGroupItemRequestBuilderGetQueryParameters(
		expand = ["publishedResources","agents"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').agent_groups.by_on_premises_agent_group_id('onPremisesAgentGroup-id').get(request_configuration = request_configuration)


```