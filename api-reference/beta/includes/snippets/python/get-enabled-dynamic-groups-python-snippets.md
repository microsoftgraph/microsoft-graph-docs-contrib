---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.groups_request_builder import GroupsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GroupsRequestBuilder.GroupsRequestBuilderGetQueryParameters(
		filter = "mailEnabled eq false and securityEnabled eq true and NOT(groupTypes/any(s:s eq 'Unified')) and membershipRuleProcessingState eq 'On'",
		count = True,
		select = ["id","membershipRule","membershipRuleProcessingState"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.groups.get(request_configuration = request_configuration)


```