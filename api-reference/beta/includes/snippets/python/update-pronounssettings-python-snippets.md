---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PronounsSettings()
request_body.is_enabled_in_organization = True




result = await client.admin.people.pronouns.patch(request_body = request_body)


```