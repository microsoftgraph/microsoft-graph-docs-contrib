---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_phone import ItemPhone
from msgraph_beta.generated.models.phone_type import PhoneType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ItemPhone(
	type = PhoneType.Other,
)

result = await graph_client.users.by_user_id('user-id').profile.phones.by_item_phone_id('itemPhone-id').patch(request_body)


```