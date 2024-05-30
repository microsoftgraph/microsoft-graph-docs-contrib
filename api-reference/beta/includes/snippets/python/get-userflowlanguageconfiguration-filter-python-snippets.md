---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.b2c_user_flows.item.languages.languages_request_builder import LanguagesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = LanguagesRequestBuilder.LanguagesRequestBuilderGetQueryParameters(
		filter = "isEnabled eq true",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2c_user_flows.by_b2c_identity_user_flow_id('b2cIdentityUserFlow-id').languages.get(request_configuration = request_configuration)


```