---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.conditional_access.templates.templates_request_builder import TemplatesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = TemplatesRequestBuilder.TemplatesRequestBuilderGetQueryParameters(
		select = ["name","description","id","scenarios"],
		filter = "scenarios has 'secureFoundation'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.templates.get(request_configuration = request_configuration)


```