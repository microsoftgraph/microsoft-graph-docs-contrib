---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_retention_label import ItemRetentionLabel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ItemRetentionLabel(
	name = "Retention label for Contracts",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').retention_label.patch(request_body)


```