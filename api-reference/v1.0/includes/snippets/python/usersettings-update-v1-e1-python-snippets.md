---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UserSettings()
request_body.contribution_to_content_discovery_disabled = True




result = await client.me.settings.patch(request_body = request_body)


```