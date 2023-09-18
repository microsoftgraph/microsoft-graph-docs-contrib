---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CopyPostRequestBody(
	destination_id = "destinationId-value",
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').copy.post(body = request_body)


```