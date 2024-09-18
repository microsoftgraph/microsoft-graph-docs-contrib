---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph.generated.models.access_package_request_type import AccessPackageRequestType
from msgraph.generated.models.entitlement_management_schedule import EntitlementManagementSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.expiration_pattern_type import ExpirationPatternType
from msgraph.generated.models.access_package_assignment import AccessPackageAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentRequest(
	odata_type = "#microsoft.graph.accessPackageAssignmentRequest",
	request_type = AccessPackageRequestType.AdminUpdate,
	schedule = EntitlementManagementSchedule(
		start_date_time = "2023-05-23T20:04:02.39Z",
		recurrence = None,
		expiration = ExpirationPattern(
			end_date_time = "2024-07-01T00:00:00.00Z",
			duration = None,
			type = ExpirationPatternType.AfterDateTime,
		),
	),
	assignment = AccessPackageAssignment(
		id = "329f8dac-8062-4c1b-a9b8-39b7132f9bff",
	),
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```