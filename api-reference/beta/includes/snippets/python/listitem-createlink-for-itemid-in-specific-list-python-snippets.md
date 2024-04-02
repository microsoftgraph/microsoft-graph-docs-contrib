---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.create_link_post_request_body import CreateLinkPostRequestBody
from msgraph.generated.models.drive_recipient import DriveRecipient

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateLinkPostRequestBody(
	type = "view",
	scope = "anonymous",
	password = "String",
	recipients = [
		DriveRecipient(
			odata_type = "microsoft.graph.driveRecipient",
		),
	],
	send_notification = True,
	retain_inherited_permissions = False,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').create_link.post(request_body)


```