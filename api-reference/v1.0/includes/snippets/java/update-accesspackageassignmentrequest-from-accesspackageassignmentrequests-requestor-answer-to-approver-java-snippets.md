---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.id = "7a6ab703-0780-4b37-8445-81f679b2d75c";
accessPackageAssignmentRequest.requestType = AccessPackageRequestType.ADMIN_UPDATE;
LinkedList<AccessPackageAnswer> answersList = new LinkedList<AccessPackageAnswer>();
AccessPackageAnswerString answers = new AccessPackageAnswerString();
answers.value = "UpdatedAnswerValue";
AccessPackageMultipleChoiceQuestion answeredQuestion = new AccessPackageMultipleChoiceQuestion();
answeredQuestion.id = "8fe745e7-80b2-490d-bd22-4e708c77288c";
answers.answeredQuestion = answeredQuestion;
answersList.add(answers);
AccessPackageAnswerString answers1 = new AccessPackageAnswerString();
answers1.value = "My updated answer.";
answers1.displayValue = "This is my updated answer to the question.";
AccessPackageTextInputQuestion answeredQuestion1 = new AccessPackageTextInputQuestion();
answeredQuestion1.id = "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6";
answers1.answeredQuestion = answeredQuestion1;
answersList.add(answers1);
accessPackageAssignmentRequest.answers = answersList;
AccessPackageAssignment assignment = new AccessPackageAssignment();
assignment.id = "44c741c1-2cf4-40db-83b6-e0112f8e5a83";
accessPackageAssignmentRequest.assignment = assignment;

graphClient.identityGovernance().entitlementManagement().assignmentRequests()
	.buildRequest()
	.post(accessPackageAssignmentRequest);

```