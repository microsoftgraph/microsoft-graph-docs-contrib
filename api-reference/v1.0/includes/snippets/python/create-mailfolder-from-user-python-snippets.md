---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MailFolder(
	display_name = "Clutter",
	is_hidden = True,
)

result = await graph_client.me.mail_folders.post(request_body)


```