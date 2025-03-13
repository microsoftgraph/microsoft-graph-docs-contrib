---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.feature_rollout_policy import FeatureRolloutPolicy
from msgraph.generated.models.staged_feature_name import StagedFeatureName
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FeatureRolloutPolicy(
	display_name = "PassthroughAuthentication rollout policy",
	description = "PassthroughAuthentication rollout policy",
	feature = StagedFeatureName.PassthroughAuthentication,
	is_enabled = True,
	is_applied_to_organization = False,
)

result = await graph_client.policies.feature_rollout_policies.post(request_body)


```