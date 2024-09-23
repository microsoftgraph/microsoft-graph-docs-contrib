---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_address import ItemAddress
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ItemAddress(
	allowed_audiences = AllowedAudiences.Me,
	display_name = "Secret Hideout",
)

result = await graph_client.users.by_user_id('user-id').profile.addresses.by_item_address_id('itemAddress-id').patch(request_body)


```