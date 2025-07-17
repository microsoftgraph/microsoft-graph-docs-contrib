---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.policies.feature_rollout_policies.item.feature_rollout_policy_item_request_builder import FeatureRolloutPolicyItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = FeatureRolloutPolicyItemRequestBuilder.FeatureRolloutPolicyItemRequestBuilderGetQueryParameters(
		expand = ["appliesTo"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.feature_rollout_policies.by_feature_rollout_policy_id('featureRolloutPolicy-id').get(request_configuration = request_configuration)


```