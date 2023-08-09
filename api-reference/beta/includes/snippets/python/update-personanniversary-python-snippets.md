---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonAnnualEvent()
request_body.allowedaudiences(AllowedAudiences.Contacts('allowedaudiences.contacts'))




result = await client.me.profile.anniversaries.by_anniversarie_id('personAnnualEvent-id').patch(request_body = request_body)


```