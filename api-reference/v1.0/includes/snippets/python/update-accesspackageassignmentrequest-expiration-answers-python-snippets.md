---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph.generated.models.access_package_request_type import AccessPackageRequestType
from msgraph.generated.models.access_package_answer import AccessPackageAnswer
from msgraph.generated.models.access_package_answer_string import AccessPackageAnswerString
from msgraph.generated.models.access_package_text_input_question import AccessPackageTextInputQuestion
from msgraph.generated.models.entitlement_management_schedule import EntitlementManagementSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.expiration_pattern_type import ExpirationPatternType
from msgraph.generated.models.access_package_assignment import AccessPackageAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentRequest(
	request_type = AccessPackageRequestType.UserUpdate,
	answers = [
		AccessPackageAnswerString(
			odata_type = "#microsoft.graph.accessPackageAnswerString",
			value = "My updated answer.",
			answered_question = AccessPackageTextInputQuestion(
				odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
				id = "0d31cc60-968e-4f92-955b-443fed03d6f6",
			),
		),
	],
	schedule = EntitlementManagementSchedule(
		start_date_time = "2024-09-18T20:49:16.17Z",
		recurrence = None,
		expiration = ExpirationPattern(
			end_date_time = "2024-10-18T20:49:15.17Z",
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