---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ForwardingPolicyLink()
request_body.@odata_type = '#microsoft.graph.networkaccess.forwardingPolicyLink'

request_body.state(Status.Enabled('status.enabled'))




result = await client.network_access.forwarding_profiles.by_forwarding_profile_id('forwardingProfile-id').policies.by_policie_id('policyLink-id').patch(request_body = request_body)


```