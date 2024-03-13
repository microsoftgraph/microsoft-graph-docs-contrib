---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.refreshSession.refresh_session_request_builder import RefreshSessionRequestBuilder
from msgraph.generated.models.refresh_session_post_request_body import RefreshSessionPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RefreshSessionPostRequestBody(
)

request_configuration = RefreshSessionRequestBuilder.RefreshSessionRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("workbook-session-id", "{session-id}")


await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.refresh_session.post(request_body, request_configuration = request_configuration)


```