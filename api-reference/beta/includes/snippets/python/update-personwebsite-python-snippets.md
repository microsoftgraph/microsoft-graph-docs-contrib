---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonWebsite(
	description = "Lyn Damer play in the Women's 1st Division (Toppserien) in Norway",
)

result = await graph_client.me.profile.websites.by_person_website_id('personWebsite-id').patch(request_body)


```