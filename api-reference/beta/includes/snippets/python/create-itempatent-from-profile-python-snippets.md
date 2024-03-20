---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.item_patent import ItemPatent

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemPatent(
	description = "Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.",
	display_name = "Inferring User Intent through browsing behaviors",
	is_pending = True,
	number = "USPTO-3954432633",
	web_url = "https://patents.gov/3954432633",
)

result = await graph_client.me.profile.patents.post(request_body)


```