---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.storage.file_storage.containers.containers_request_builder import ContainersRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ContainersRequestBuilder.ContainersRequestBuilderGetQueryParameters(
		filter = "containerTypeId eq {containerTypeId}",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.storage.file_storage.containers.get(request_configuration = request_configuration)


```