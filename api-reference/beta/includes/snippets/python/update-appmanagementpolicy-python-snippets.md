---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AppManagementPolicy()
request_body.is_enabled = False




result = await client.policies.app_management_policies.by_app_management_policie_id('appManagementPolicy-id').patch(request_body = request_body)


```