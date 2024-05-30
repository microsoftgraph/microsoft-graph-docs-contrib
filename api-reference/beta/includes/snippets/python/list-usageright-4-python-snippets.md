---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.usage_rights.usage_rights_request_builder import UsageRightsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UsageRightsRequestBuilder.UsageRightsRequestBuilderGetQueryParameters(
		filter = "state in ('active', 'suspended') and serviceIdentifier in ('ABCD')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').usage_rights.get(request_configuration = request_configuration)


```