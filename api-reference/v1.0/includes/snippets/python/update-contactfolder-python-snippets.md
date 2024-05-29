---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.contact_folder import ContactFolder

graph_client = GraphServiceClient(credentials, scopes)

request_body = ContactFolder(
	parent_folder_id = "parentFolderId-value",
	display_name = "displayName-value",
)

result = await graph_client.me.contact_folders.by_contact_folder_id('contactFolder-id').patch(request_body)


```