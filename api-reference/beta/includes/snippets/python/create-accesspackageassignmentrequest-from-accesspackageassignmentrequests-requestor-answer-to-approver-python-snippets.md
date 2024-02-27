---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph.generated.models.access_package_assignment import AccessPackageAssignment
from msgraph.generated.models.access_package_answer import AccessPackageAnswer
from msgraph.generated.models.access_package_answer_string import AccessPackageAnswerString
from msgraph.generated.models.access_package_multiple_choice_question import AccessPackageMultipleChoiceQuestion
from msgraph.generated.models.access_package_text_input_question import AccessPackageTextInputQuestion

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentRequest(
	request_type = "UserAdd",
	access_package_assignment = AccessPackageAssignment(
		target_id = "46184453-e63b-4f20-86c2-c557ed5d5df9",
		assignment_policy_id = "2264bf65-76ba-417b-a27d-54d291f0cbc8",
		access_package_id = "a914b616-e04e-476b-aa37-91038f0b165b",
	),
	answers = [
		AccessPackageAnswerString(
			odata_type = "#microsoft.graph.accessPackageAnswerString",
			value = "Arizona",
			answered_question = AccessPackageMultipleChoiceQuestion(
				odata_type = "#microsoft.graph.accessPackageMultipleChoiceQuestion",
				id = "A714EC6F-4EE0-4614-BD81-37E0C5ECBBFF",
			),
		),
		AccessPackageAnswerString(
			odata_type = "#microsoft.graph.accessPackageAnswerString",
			value = "Need access to marketing campaign material",
			answered_question = AccessPackageTextInputQuestion(
				odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
				id = "AA615EE9-D9D8-4C03-BE91-BEE37106DEDA",
			),
		),
	],
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_requests.post(request_body)


```