---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = MovePostRequestBody(
	destination_id = "destinationId-value",
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').move.post(request_body)


```