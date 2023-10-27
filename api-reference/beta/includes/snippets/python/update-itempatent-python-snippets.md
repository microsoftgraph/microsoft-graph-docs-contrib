---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemPatent(
	number = "USPTO-3954432633",
	web_url = "https://patents.gov/3954432633",
)

result = await graph_client.users.by_user_id('user-id').profile.patents.by_item_patent_id('itemPatent-id').patch(request_body)


```