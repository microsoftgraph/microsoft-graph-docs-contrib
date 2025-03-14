---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.privileged_access.group.eligibility_schedule_instances.eligibility_schedule_instances_request_builder import EligibilityScheduleInstancesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = EligibilityScheduleInstancesRequestBuilder.EligibilityScheduleInstancesRequestBuilderGetQueryParameters(
		filter = "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.privileged_access.group.eligibility_schedule_instances.get(request_configuration = request_configuration)


```