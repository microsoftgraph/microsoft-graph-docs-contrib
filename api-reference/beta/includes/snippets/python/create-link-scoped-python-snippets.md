---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.create_link_post_request_body import CreateLinkPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateLinkPostRequestBody(
	type = "edit",
	scope = "organization",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').create_link.post(request_body)


```