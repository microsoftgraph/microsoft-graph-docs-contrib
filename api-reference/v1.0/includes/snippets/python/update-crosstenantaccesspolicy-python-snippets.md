---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CrossTenantAccessPolicy()
request_body.AllowedCloudEndpoints(['microsoftonline.us', ])




result = await client.policies.cros_tenant_acces_policy.patch(request_body = request_body)


```