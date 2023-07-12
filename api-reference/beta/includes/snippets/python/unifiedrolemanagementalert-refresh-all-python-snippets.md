---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RefreshPostRequestBody()
request_body.scope_id = '/'

request_body.scope_type = 'DirectoryRole'




await client.identity_governance.role_management_alerts.alerts.refresh.post(request_body = request_body)


```