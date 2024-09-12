---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.policies.app_management_policies.item.applies_to.applies_to_request_builder import AppliesToRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AppliesToRequestBuilder.AppliesToRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","createdDateTime"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.app_management_policies.by_app_management_policy_id('appManagementPolicy-id').applies_to.get(request_configuration = request_configuration)


```