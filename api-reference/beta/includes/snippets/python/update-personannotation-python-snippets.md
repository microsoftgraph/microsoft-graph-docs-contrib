---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonAnnotation()
request_body.allowedaudiences(AllowedAudiences.Organization('allowedaudiences.organization'))




result = await client.users.by_user_id('user-id').profile.notes.by_note_id('personAnnotation-id').patch(request_body = request_body)


```