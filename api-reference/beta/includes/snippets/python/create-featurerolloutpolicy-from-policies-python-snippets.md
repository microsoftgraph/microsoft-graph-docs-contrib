---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = FeatureRolloutPolicy()
request_body.display_name = 'PassthroughAuthentication rollout policy'

request_body.description = 'PassthroughAuthentication rollout policy'

request_body.feature(StagedFeatureName.PassthroughAuthentication('stagedfeaturename.passthroughauthentication'))

request_body.is_enabled = True

request_body.is_applied_to_organization = False




result = await client.policies.feature_rollout_policies.post(request_body = request_body)


```