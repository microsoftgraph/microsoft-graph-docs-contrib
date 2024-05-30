---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.mail_folders.mail_folders_request_builder import MailFoldersRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = MailFoldersRequestBuilder.MailFoldersRequestBuilderGetQueryParameters(
		include_hidden_folders = "true",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.mail_folders.get(request_configuration = request_configuration)


```