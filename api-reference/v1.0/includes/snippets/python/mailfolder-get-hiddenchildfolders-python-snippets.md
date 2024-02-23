---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.mailFolders.item.childFolders.child_folders_request_builder import ChildFoldersRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ChildFoldersRequestBuilder.ChildFoldersRequestBuilderGetQueryParameters(
		include_hidden_folders = "true",
)

request_configuration = ChildFoldersRequestBuilder.ChildFoldersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').child_folders.get(request_configuration = request_configuration)


```