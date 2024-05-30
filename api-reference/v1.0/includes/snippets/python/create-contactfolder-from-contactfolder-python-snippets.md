---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.contact_folder import ContactFolder

graph_client = GraphServiceClient(credentials, scopes)

request_body = ContactFolder(
	display_name = "Family",
)

result = await graph_client.me.contact_folders.by_contact_folder_id('contactFolder-id').child_folders.post(request_body)


```