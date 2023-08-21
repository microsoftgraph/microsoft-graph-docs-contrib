---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonInterest()
request_body.Categories(['Sports', ])




result = await client.me.profile.interests.by_interest_id('personInterest-id').patch(request_body = request_body)


```