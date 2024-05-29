---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.role_management.directory.role_definitions.role_definitions_request_builder import RoleDefinitionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleDefinitionsRequestBuilder.RoleDefinitionsRequestBuilderGetQueryParameters(
		filter = "isPrivileged eq true",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_definitions.get(request_configuration = request_configuration)


```