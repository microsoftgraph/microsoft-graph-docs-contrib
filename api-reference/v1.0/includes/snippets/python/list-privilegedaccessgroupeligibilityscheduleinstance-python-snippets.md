---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.privilegedAccess.group.eligibilityScheduleInstances.eligibility_schedule_instances_request_builder import EligibilityScheduleInstancesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = EligibilityScheduleInstancesRequestBuilder.EligibilityScheduleInstancesRequestBuilderGetQueryParameters(
		filter = "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'",
)

request_configuration = EligibilityScheduleInstancesRequestBuilder.EligibilityScheduleInstancesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.privileged_access.group.eligibility_schedule_instances.get(request_configuration = request_configuration)


```