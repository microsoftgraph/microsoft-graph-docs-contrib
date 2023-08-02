---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest()
request_body.request_type = 'UserAdd'

access_package_assignment = AccessPackageAssignment()
access_package_assignment.target_id = '46184453-e63b-4f20-86c2-c557ed5d5df9'

access_package_assignment.assignment_policy_id = '2264bf65-76ba-417b-a27d-54d291f0cbc8'

access_package_assignment.access_package_id = 'a914b616-e04e-476b-aa37-91038f0b165b'


request_body.access_package_assignment = access_package_assignment
answers_access_package_answer1 = AccessPackageAnswerString()
answers_access_package_answer1.@odata_type = '#microsoft.graph.accessPackageAnswerString'

answers_access_package_answer1.value = 'Arizona'

answers_access_package_answer1answered_question = AccessPackageMultipleChoiceQuestion()
answers_access_package_answer1answered_question.@odata_type = '#microsoft.graph.accessPackageMultipleChoiceQuestion'

answers_access_package_answer1answered_question.id = 'A714EC6F-4EE0-4614-BD81-37E0C5ECBBFF'


answers_access_package_answer1.answered_question = answers_access_package_answer1answered_question

answersArray []= answersAccessPackageAnswer1;
answers_access_package_answer2 = AccessPackageAnswerString()
answers_access_package_answer2.@odata_type = '#microsoft.graph.accessPackageAnswerString'

answers_access_package_answer2.value = 'Need access to marketing campaign material'

answers_access_package_answer2answered_question = AccessPackageTextInputQuestion()
answers_access_package_answer2answered_question.@odata_type = '#microsoft.graph.accessPackageTextInputQuestion'

answers_access_package_answer2answered_question.id = 'AA615EE9-D9D8-4C03-BE91-BEE37106DEDA'


answers_access_package_answer2.answered_question = answers_access_package_answer2answered_question

answersArray []= answersAccessPackageAnswer2;
request_body.answers(answersArray)





result = await client.identity_governance.entitlement_management.acces_package_assignment_requests.post(request_body = request_body)


```