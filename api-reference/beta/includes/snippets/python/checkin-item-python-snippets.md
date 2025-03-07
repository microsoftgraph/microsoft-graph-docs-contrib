---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.drives.item.items.item.checkin.checkin_post_request_body import CheckinPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CheckinPostRequestBody(
	comment = "Updating the latest guidelines",
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').checkin.post(request_body)


```