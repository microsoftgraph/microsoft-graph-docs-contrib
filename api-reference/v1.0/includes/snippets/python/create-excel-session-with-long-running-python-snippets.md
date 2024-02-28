---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.createSession.create_session_request_builder import CreateSessionRequestBuilder
from msgraph.generated.models.create_session_post_request_body import CreateSessionPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateSessionPostRequestBody(
	persist_changes = True,
)

request_configuration = CreateSessionRequestBuilder.CreateSessionRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Prefer", "respond-async")


result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.create_session.post(request_body, request_configuration = request_configuration)


```