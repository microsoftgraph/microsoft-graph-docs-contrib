---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest()
request_body.@odata_type = '#microsoft.graph.accessPackageAssignmentRequest'

request_body.id = '7a6ab703-0780-4b37-8445-81f679b2d75c'

request_body.requesttype(AccessPackageRequestType.AdminUpdate('accesspackagerequesttype.adminupdate'))

answers_access_package_answer1 = AccessPackageAnswerString()
answers_access_package_answer1.@odata_type = '#microsoft.graph.accessPackageAnswerString'

answers_access_package_answer1.value = 'UpdatedAnswerValue'

answers_access_package_answer1answered_question = AccessPackageMultipleChoiceQuestion()
answers_access_package_answer1answered_question.@odata_type = '#microsoft.graph.accessPackageMultipleChoiceQuestion'

answers_access_package_answer1answered_question.id = '8fe745e7-80b2-490d-bd22-4e708c77288c'


answers_access_package_answer1.answered_question = answers_access_package_answer1answered_question

answersArray []= answersAccessPackageAnswer1;
answers_access_package_answer2 = AccessPackageAnswerString()
answers_access_package_answer2.@odata_type = '#microsoft.graph.accessPackageAnswerString'

answers_access_package_answer2.value = 'My updated answer.'

answers_access_package_answer2.display_value = 'This is my updated answer to the question.'

answers_access_package_answer2answered_question = AccessPackageTextInputQuestion()
answers_access_package_answer2answered_question.@odata_type = '#microsoft.graph.accessPackageTextInputQuestion'

answers_access_package_answer2answered_question.id = '7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6'


answers_access_package_answer2.answered_question = answers_access_package_answer2answered_question

answersArray []= answersAccessPackageAnswer2;
request_body.answers(answersArray)


assignment = AccessPackageAssignment()
assignment.id = '44c741c1-2cf4-40db-83b6-e0112f8e5a83'


request_body.assignment = assignment



result = await client.identity_governance.entitlement_management.assignment_requests.post(request_body = request_body)


```