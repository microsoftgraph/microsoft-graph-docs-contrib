---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAward(
	description = "Lifetime Achievement award from the International Association of Branding Managers",
	display_name = "Lifetime Achievement Award For Excellence in Branding",
	issued_date = "Date",
	issuing_authority = "International Association of Branding Management",
	thumbnail_url = "https://iabm.io/sdhdfhsdhshsd.jpg",
	web_url = "https://www.iabm.io",
)

result = await graph_client.me.profile.awards.post(request_body)


```