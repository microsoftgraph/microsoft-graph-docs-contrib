```python
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.usage_rights.usage_rights_request_builder import UsageRightsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UsageRightsRequestBuilder.UsageRightsRequestBuilderGetQueryParameters(
		filter = "services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.groups.by_group_id('group-id').cloud_licensing.usage_rights.get(request_configuration = request_configuration)
```