---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonAward()
request_body.issuing_authority = 'International Association of Branding Management'

request_body.thumbnail_url = 'https://iabm.io/sdhdfhsdhshsd.jpg'




result = await client.users.by_user_id('user-id').profile.awards.by_award_id('personAward-id').patch(request_body = request_body)


```