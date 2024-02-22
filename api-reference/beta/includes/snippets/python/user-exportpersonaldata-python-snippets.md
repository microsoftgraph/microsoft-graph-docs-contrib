---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.export_personal_data_post_request_body import ExportPersonalDataPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExportPersonalDataPostRequestBody(
	storage_location = "storageLocation-value",
)

await graph_client.users.by_user_id('user-id').export_personal_data.post(request_body)


```