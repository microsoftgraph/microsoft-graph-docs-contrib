---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = FeatureRolloutPolicyRequestBuilder.FeatureRolloutPolicyRequestBuilderGetQueryParameters(
		expand = ["appliesTo"],
)

request_configuration = FeatureRolloutPolicyRequestBuilder.FeatureRolloutPolicyRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.policies.feature_rollout_policies.by_feature_rollout_policie_id('featureRolloutPolicy-id').get(request_configuration = request_configuration)


```