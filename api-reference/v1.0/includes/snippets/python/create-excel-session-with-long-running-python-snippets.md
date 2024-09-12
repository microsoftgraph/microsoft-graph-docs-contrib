---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.create_session.create_session_request_builder import CreateSessionRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.drives.item.items.item.workbook.create_session.create_session_post_request_body import CreateSessionPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CreateSessionPostRequestBody(
	persist_changes = True,
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "respond-async")


result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.create_session.post(request_body, request_configuration = request_configuration)


```