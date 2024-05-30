---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.contact_folder import ContactFolder

graph_client = GraphServiceClient(credentials, scopes)

request_body = ContactFolder(
	parent_folder_id = "AQMkADIxYjJiYgEzLTFmNjYALTRjYTMtODA1NC0wZDkxZGNmOTcxNTQALgAAA8RJzXYaLKZPlmn0ge0edZkBADa3qi2IMXRNg6RwQSHe_F8AAAIBDgAAAA==",
	display_name = "Important contacts",
)

result = await graph_client.me.contact_folders.post(request_body)


```