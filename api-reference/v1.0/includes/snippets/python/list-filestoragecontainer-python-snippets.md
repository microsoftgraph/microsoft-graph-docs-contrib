---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.storage.file_storage.containers.containers_request_builder import ContainersRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ContainersRequestBuilder.ContainersRequestBuilderGetQueryParameters(
		filter = "containerTypeId eq e2756c4d-fa33-4452-9c36-2325686e1082",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.storage.file_storage.containers.get(request_configuration = request_configuration)


```