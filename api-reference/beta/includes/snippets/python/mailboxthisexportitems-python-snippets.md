---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.exchange.mailboxes.item.export_items.export_items_post_request_body import ExportItemsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportItemsPostRequestBody(
	item_ids = [
		"EDSVrdi3lRAADmpnf1AAA=",
		"EDSVrdi3lRAAD45b7RAAA=",
	],
)

result = await graph_client.admin.exchange.mailboxes.by_mailbox_id('mailbox-id').export_items.post(request_body)


```