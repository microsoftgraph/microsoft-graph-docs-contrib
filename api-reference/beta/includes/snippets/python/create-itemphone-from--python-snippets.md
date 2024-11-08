---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_phone import ItemPhone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ItemPhone(
	display_name = "Car Phone",
	number = "+7 499 342 22 13",
)

result = await graph_client.me.profile.phones.post(request_body)


```