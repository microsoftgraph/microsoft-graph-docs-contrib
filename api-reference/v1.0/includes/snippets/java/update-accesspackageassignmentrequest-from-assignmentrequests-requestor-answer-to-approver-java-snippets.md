---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setOdataType("#microsoft.graph.accessPackageAssignmentRequest");
accessPackageAssignmentRequest.setId("7a6ab703-0780-4b37-8445-81f679b2d75c");
accessPackageAssignmentRequest.setRequestType(AccessPackageRequestType.AdminUpdate);
LinkedList<AccessPackageAnswer> answers = new LinkedList<AccessPackageAnswer>();
AccessPackageAnswerString accessPackageAnswer = new AccessPackageAnswerString();
accessPackageAnswer.setOdataType("#microsoft.graph.accessPackageAnswerString");
accessPackageAnswer.setValue("UpdatedAnswerValue");
AccessPackageMultipleChoiceQuestion answeredQuestion = new AccessPackageMultipleChoiceQuestion();
answeredQuestion.setOdataType("#microsoft.graph.accessPackageMultipleChoiceQuestion");
answeredQuestion.setId("8fe745e7-80b2-490d-bd22-4e708c77288c");
accessPackageAnswer.setAnsweredQuestion(answeredQuestion);
answers.add(accessPackageAnswer);
AccessPackageAnswerString accessPackageAnswer1 = new AccessPackageAnswerString();
accessPackageAnswer1.setOdataType("#microsoft.graph.accessPackageAnswerString");
accessPackageAnswer1.setValue("My updated answer.");
accessPackageAnswer1.setDisplayValue("This is my updated answer to the question.");
AccessPackageTextInputQuestion answeredQuestion1 = new AccessPackageTextInputQuestion();
answeredQuestion1.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
answeredQuestion1.setId("7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6");
accessPackageAnswer1.setAnsweredQuestion(answeredQuestion1);
answers.add(accessPackageAnswer1);
accessPackageAssignmentRequest.setAnswers(answers);
AccessPackageAssignment assignment = new AccessPackageAssignment();
assignment.setId("44c741c1-2cf4-40db-83b6-e0112f8e5a83");
accessPackageAssignmentRequest.setAssignment(assignment);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```