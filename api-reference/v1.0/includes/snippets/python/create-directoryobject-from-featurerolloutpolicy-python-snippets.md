---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.reference_create import ReferenceCreate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/v1.0/directoryObjects/2441b489-4f12-4882-b039-8f6006bd66da",
)

await graph_client.policies.feature_rollout_policies.by_feature_rollout_policy_id('featureRolloutPolicy-id').applies_to.ref.post(request_body)


```