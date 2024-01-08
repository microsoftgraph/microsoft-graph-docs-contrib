---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAward(
	issuing_authority = "International Association of Branding Management",
	thumbnail_url = "https://iabm.io/sdhdfhsdhshsd.jpg",
)

result = await graph_client.users.by_user_id('user-id').profile.awards.by_person_award_id('personAward-id').patch(request_body)


```