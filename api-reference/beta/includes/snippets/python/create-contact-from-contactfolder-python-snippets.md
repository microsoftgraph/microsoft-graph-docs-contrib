---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.contact import Contact

graph_client = GraphServiceClient(credentials, scopes)

request_body = Contact(
	parent_folder_id = "parentFolderId-value",
	birthday = "2016-10-19T10:37:00Z",
	file_as = "fileAs-value",
	display_name = "displayName-value",
	given_name = "givenName-value",
	initials = "initials-value",
)

result = await graph_client.me.contact_folders.by_contact_folder_id('contactFolder-id').contacts.post(request_body)


```