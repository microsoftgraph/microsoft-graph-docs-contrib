---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GroupLifecyclePolicy()
request_body.GroupLifetimeInDays = 100

request_body.managed_group_types = 'Selected'

request_body.alternate_notification_emails = 'admin@contoso.com'




result = await client.group_lifecycle_policies.post(request_body = request_body)


```