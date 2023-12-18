---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MailFolder(
	display_name = "displayName-value",
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').patch(request_body)


```