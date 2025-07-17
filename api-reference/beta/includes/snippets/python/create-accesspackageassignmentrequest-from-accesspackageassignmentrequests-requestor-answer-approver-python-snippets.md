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
	request_type = "userAdd",
	answers = [
		AccessPackageAnswerString(
			odata_type = "#microsoft.graph.accessPackageAnswerString",
			display_value = "This is the answer to a multiple choice question",
			value = "MultipleChoiceAnswerValue",
			answered_question = AccessPackageMultipleChoiceQuestion(
				odata_type = "#microsoft.graph.accessPackageMultipleChoiceQuestion",
				id = "8fe745e7-80b2-490d-bd22-4e708c77288c",
			),
		),
		AccessPackageAnswerString(
			odata_type = "#microsoft.graph.accessPackageAnswerString",
			value = "This is my answer to a text input question.",
			display_value = "This is my answer.",
			answered_question = AccessPackageTextInputQuestion(
				odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
				id = "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6",
			),
		),
	],
	additional_data = {
			"assignment" : {
					"access_package_id" : "977c7ff4-ef8f-4910-9d31-49048ddf3120",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```