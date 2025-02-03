---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_patent import ItemPatent
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ItemPatent(
	description = "Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.",
	display_name = "Inferring User Intent through browsing behaviors",
	is_pending = True,
	number = "USPTO-3954432633",
	web_url = "https://patents.gov/3954432633",
)

result = await graph_client.me.profile.patents.post(request_body)


```