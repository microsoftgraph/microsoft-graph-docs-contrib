---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.privileged_access.group.eligibility_schedule_requests.item.privileged_access_group_eligibility_schedule_request_item_request_builder import PrivilegedAccessGroupEligibilityScheduleRequestItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = PrivilegedAccessGroupEligibilityScheduleRequestItemRequestBuilder.PrivilegedAccessGroupEligibilityScheduleRequestItemRequestBuilderGetQueryParameters(
		select = ["principalId","action","groupId"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.privileged_access.group.eligibility_schedule_requests.by_privileged_access_group_eligibility_schedule_request_id('privilegedAccessGroupEligibilityScheduleRequest-id').get(request_configuration = request_configuration)


```