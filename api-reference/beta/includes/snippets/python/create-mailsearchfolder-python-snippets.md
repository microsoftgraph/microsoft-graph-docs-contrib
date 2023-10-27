---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MailSearchFolder(
	odata_type = "microsoft.graph.mailSearchFolder",
	display_name = "Weekly digests",
	include_nested_folders = True,
	source_folder_ids = [
		"AQMkADYAAAIBDAAAAA==",
	],
	filter_query = "contains(subject, 'weekly digest')",
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').child_folders.post(request_body)


```