---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.usage_rights.usage_rights_request_builder import UsageRightsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = UsageRightsRequestBuilder.UsageRightsRequestBuilderGetQueryParameters(
		filter = "state in ('active', 'suspended') and serviceIdentifier in ('ABCD')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').usage_rights.get(request_configuration = request_configuration)


```