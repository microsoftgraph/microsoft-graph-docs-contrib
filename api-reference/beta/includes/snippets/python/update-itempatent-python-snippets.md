---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_patent import ItemPatent
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ItemPatent(
	number = "USPTO-3954432633",
	web_url = "https://patents.gov/3954432633",
)

result = await graph_client.users.by_user_id('user-id').profile.patents.by_item_patent_id('itemPatent-id').patch(request_body)


```