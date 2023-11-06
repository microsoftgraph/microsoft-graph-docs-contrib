---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExportPersonalDataPostRequestBody(
	storage_location = "storageLocation-value",
)

await graph_client.users.by_user_id('user-id').export_personal_data.post(request_body)


```