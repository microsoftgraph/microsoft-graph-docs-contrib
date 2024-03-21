---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType("UserAdd");
AccessPackageAssignment accessPackageAssignment = new AccessPackageAssignment();
accessPackageAssignment.setTargetId("46184453-e63b-4f20-86c2-c557ed5d5df9");
accessPackageAssignment.setAssignmentPolicyId("2264bf65-76ba-417b-a27d-54d291f0cbc8");
accessPackageAssignment.setAccessPackageId("a914b616-e04e-476b-aa37-91038f0b165b");
accessPackageAssignmentRequest.setAccessPackageAssignment(accessPackageAssignment);
LinkedList<AccessPackageAnswer> answers = new LinkedList<AccessPackageAnswer>();
AccessPackageAnswerString accessPackageAnswer = new AccessPackageAnswerString();
accessPackageAnswer.setOdataType("#microsoft.graph.accessPackageAnswerString");
accessPackageAnswer.setValue("Arizona");
AccessPackageMultipleChoiceQuestion answeredQuestion = new AccessPackageMultipleChoiceQuestion();
answeredQuestion.setOdataType("#microsoft.graph.accessPackageMultipleChoiceQuestion");
answeredQuestion.setId("A714EC6F-4EE0-4614-BD81-37E0C5ECBBFF");
accessPackageAnswer.setAnsweredQuestion(answeredQuestion);
answers.add(accessPackageAnswer);
AccessPackageAnswerString accessPackageAnswer1 = new AccessPackageAnswerString();
accessPackageAnswer1.setOdataType("#microsoft.graph.accessPackageAnswerString");
accessPackageAnswer1.setValue("Need access to marketing campaign material");
AccessPackageTextInputQuestion answeredQuestion1 = new AccessPackageTextInputQuestion();
answeredQuestion1.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
answeredQuestion1.setId("AA615EE9-D9D8-4C03-BE91-BEE37106DEDA");
accessPackageAnswer1.setAnsweredQuestion(answeredQuestion1);
answers.add(accessPackageAnswer1);
accessPackageAssignmentRequest.setAnswers(answers);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests().post(accessPackageAssignmentRequest);


```