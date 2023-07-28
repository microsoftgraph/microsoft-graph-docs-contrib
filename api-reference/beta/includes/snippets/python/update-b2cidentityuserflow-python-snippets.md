---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = B2cIdentityUserFlow()
request_body.is_language_customization_enabled = True

request_body.default_language_tag = 'en'




result = await client.identity.b2c_user_flows.by_b2c_user_flow_id('b2cIdentityUserFlow-id').patch(request_body = request_body)


```