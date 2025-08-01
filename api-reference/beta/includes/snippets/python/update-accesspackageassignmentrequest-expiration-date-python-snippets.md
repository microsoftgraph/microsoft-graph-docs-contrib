---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph_beta.generated.models.request_schedule import RequestSchedule
from msgraph_beta.generated.models.expiration_pattern import ExpirationPattern
from msgraph_beta.generated.models.expiration_pattern_type import ExpirationPatternType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentRequest(
	odata_type = "#microsoft.graph.accessPackageAssignmentRequest",
	request_type = "adminUpdate",
	schedule = RequestSchedule(
		start_date_time = "2023-05-23T20:04:02.39Z",
		recurrence = None,
		expiration = ExpirationPattern(
			end_date_time = "2024-07-01T00:00:00.00Z",
			duration = None,
			type = ExpirationPatternType.AfterDateTime,
		),
	),
	additional_data = {
			"assignment" : {
					"id" : "329f8dac-8062-4c1b-a9b8-39b7132f9bff",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```