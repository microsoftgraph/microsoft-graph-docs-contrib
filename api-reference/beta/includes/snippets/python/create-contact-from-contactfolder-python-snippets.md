---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.contact import Contact
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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