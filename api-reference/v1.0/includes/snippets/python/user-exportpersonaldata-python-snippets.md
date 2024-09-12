---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.export_personal_data.export_personal_data_post_request_body import ExportPersonalDataPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportPersonalDataPostRequestBody(
	storage_location = "storageLocation-value",
)

await graph_client.users.by_user_id('user-id').export_personal_data.post(request_body)


```