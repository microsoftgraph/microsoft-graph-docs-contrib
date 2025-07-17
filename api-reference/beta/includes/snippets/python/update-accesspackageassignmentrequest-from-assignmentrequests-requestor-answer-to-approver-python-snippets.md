---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph_beta.generated.models.access_package_answer import AccessPackageAnswer
from msgraph_beta.generated.models.access_package_answer_string import AccessPackageAnswerString
from msgraph_beta.generated.models.access_package_multiple_choice_question import AccessPackageMultipleChoiceQuestion
from msgraph_beta.generated.models.access_package_text_input_question import AccessPackageTextInputQuestion
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentRequest(
	odata_type = "#microsoft.graph.accessPackageAssignmentRequest",
	id = "7a6ab703-0780-4b37-8445-81f679b2d75c",
	request_type = "adminUpdate",
	answers = [
		AccessPackageAnswerString(
			odata_type = "#microsoft.graph.accessPackageAnswerString",
			value = "UpdatedAnswerValue",
			answered_question = AccessPackageMultipleChoiceQuestion(
				odata_type = "#microsoft.graph.accessPackageMultipleChoiceQuestion",
				id = "8fe745e7-80b2-490d-bd22-4e708c77288c",
			),
		),
		AccessPackageAnswerString(
			odata_type = "#microsoft.graph.accessPackageAnswerString",
			value = "My updated answer.",
			display_value = "This is my updated answer to the question.",
			answered_question = AccessPackageTextInputQuestion(
				odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
				id = "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6",
			),
		),
	],
	additional_data = {
			"assignment" : {
					"id" : "44c741c1-2cf4-40db-83b6-e0112f8e5a83",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```