---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.mailFolders.mail_folders_request_builder import MailFoldersRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = MailFoldersRequestBuilder.MailFoldersRequestBuilderGetQueryParameters(
		include_hidden_folders = "true",
)

request_configuration = MailFoldersRequestBuilder.MailFoldersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.mail_folders.get(request_configuration = request_configuration)


```