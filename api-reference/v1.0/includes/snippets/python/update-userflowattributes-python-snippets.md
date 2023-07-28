---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IdentityUserFlowAttribute()
request_body.description = 'Your new hobby'




result = await client.identity.user_flow_attributes.by_user_flow_attribute_id('identityUserFlowAttribute-id').patch(request_body = request_body)


```