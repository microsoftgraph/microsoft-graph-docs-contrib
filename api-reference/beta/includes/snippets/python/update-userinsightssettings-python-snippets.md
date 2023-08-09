---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UserInsightsSettings()
request_body.is_enabled = False




result = await client.users.by_user_id('user-id').settings.item_insights.patch(request_body = request_body)


```