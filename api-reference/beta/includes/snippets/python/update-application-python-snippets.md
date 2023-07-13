---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Application()
request_body.display_name = 'New display name'




result = await client.applications.by_application_id('application-id').patch(request_body = request_body)


```