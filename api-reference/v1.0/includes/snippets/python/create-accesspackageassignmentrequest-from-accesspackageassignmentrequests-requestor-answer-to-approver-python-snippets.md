---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest()
request_body.@odata_type = '#microsoft.graph.accessPackageAssignmentRequest'

request_body.requesttype(AccessPackageRequestType.UserAdd('accesspackagerequesttype.useradd'))

answers_access_package_answer1 = AccessPackageAnswerString()
answers_access_package_answer1.@odata_type = '#microsoft.graph.accessPackageAnswerString'

answers_access_package_answer1.display_value = 'This is the answer to a multiple choice question'

answers_access_package_answer1.value = 'MultipleChoiceAnswerValue'

answers_access_package_answer1answered_question = AccessPackageMultipleChoiceQuestion()
answers_access_package_answer1answered_question.@odata_type = '#microsoft.graph.accessPackageMultipleChoiceQuestion'

answers_access_package_answer1answered_question.id = '8fe745e7-80b2-490d-bd22-4e708c77288c'


answers_access_package_answer1.answered_question = answers_access_package_answer1answered_question

answersArray []= answersAccessPackageAnswer1;
answers_access_package_answer2 = AccessPackageAnswerString()
answers_access_package_answer2.@odata_type = '#microsoft.graph.accessPackageAnswerString'

answers_access_package_answer2.value = 'This is my answer to a text input question.'

answers_access_package_answer2.display_value = 'This is my answer.'

answers_access_package_answer2answered_question = AccessPackageTextInputQuestion()
answers_access_package_answer2answered_question.@odata_type = '#microsoft.graph.accessPackageTextInputQuestion'

answers_access_package_answer2answered_question.id = '7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6'


answers_access_package_answer2.answered_question = answers_access_package_answer2answered_question

answersArray []= answersAccessPackageAnswer2;
request_body.answers(answersArray)


assignment = AccessPackageAssignment()
additional_data = [
'access_package_id' => '977c7ff4-ef8f-4910-9d31-49048ddf3120', 
];
assignment.additional_data(additional_data)



request_body.assignment = assignment



result = await client.identity_governance.entitlement_management.assignment_requests.post(request_body = request_body)


```