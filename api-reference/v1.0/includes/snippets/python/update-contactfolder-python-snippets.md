---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ContactFolder(
	parent_folder_id = "parentFolderId-value",
	display_name = "displayName-value",
)

result = await graph_client.me.contact_folders.by_contact_folder_id('contactFolder-id').patch(request_body)


```