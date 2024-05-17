---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.privileged_access.group.eligibility_schedules.eligibility_schedules_request_builder import EligibilitySchedulesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = EligibilitySchedulesRequestBuilder.EligibilitySchedulesRequestBuilderGetQueryParameters(
		filter = "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d' and principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'",
)

request_configuration = EligibilitySchedulesRequestBuilder.EligibilitySchedulesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.privileged_access.group.eligibility_schedules.get(request_configuration = request_configuration)


```