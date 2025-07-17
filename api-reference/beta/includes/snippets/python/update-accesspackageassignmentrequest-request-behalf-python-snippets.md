---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph_beta.generated.models.access_package_answer import AccessPackageAnswer
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentRequest(
	justification = "Access for direct employee",
	request_type = "UserAdd",
	answers = [
	],
	additional_data = {
			"assignment" : {
					"access_package_id" : "5b98f958-0dea-4a5b-836e-109dccbd530c",
					"schedule" : {
							"start_date_time" : None,
							"stop_date_time" : None,
					},
					"assignment_policy_id" : "c5f7847f-83a8-4315-a754-d94a6f39b875",
					"target" : {
							"display_name" : "Idris Ibrahim",
							"email" : "IdrisIbrahim@woodgrovebank.com",
							"object_id" : "21aceaba-fe13-4e3b-aa8c-4c588d5e7387",
							"subject_type" : "user",
					},
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```