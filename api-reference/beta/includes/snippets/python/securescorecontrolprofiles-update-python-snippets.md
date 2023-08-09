---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SecureScoreControlProfile()
request_body.control_state_updates = 'controlStateUpdates-value'




result = await client.security.secure_score_control_profiles.by_secure_score_control_profile_id('secureScoreControlProfile-id').patch(request_body = request_body)


```