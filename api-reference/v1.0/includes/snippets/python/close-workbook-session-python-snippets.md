---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.closeSession.close_session_request_builder import CloseSessionRequestBuilder
from msgraph.generated.models.close_session_post_request_body import CloseSessionPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloseSessionPostRequestBody(
)

request_configuration = CloseSessionRequestBuilder.CloseSessionRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("workbook-session-id", "{session-id}")


await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.close_session.post(request_body, request_configuration = request_configuration)


```