---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = FeatureRolloutPolicy()
request_body.display_name = 'PasswordHashSync Rollout Policy'

request_body.description = 'PasswordHashSync Rollout Policy'

request_body.is_enabled = True

request_body.is_applied_to_organization = False




result = await client.policies.feature_rollout_policies.by_feature_rollout_policie_id('featureRolloutPolicy-id').patch(request_body = request_body)


```