---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setOdataType("#microsoft.graph.accessPackageAssignmentRequest");
accessPackageAssignmentRequest.setRequestType("userAdd");
LinkedList<AccessPackageAnswer> answers = new LinkedList<AccessPackageAnswer>();
AccessPackageAnswerString accessPackageAnswer = new AccessPackageAnswerString();
accessPackageAnswer.setOdataType("#microsoft.graph.accessPackageAnswerString");
accessPackageAnswer.setDisplayValue("This is the answer to a multiple choice question");
accessPackageAnswer.setValue("MultipleChoiceAnswerValue");
AccessPackageMultipleChoiceQuestion answeredQuestion = new AccessPackageMultipleChoiceQuestion();
answeredQuestion.setOdataType("#microsoft.graph.accessPackageMultipleChoiceQuestion");
answeredQuestion.setId("8fe745e7-80b2-490d-bd22-4e708c77288c");
accessPackageAnswer.setAnsweredQuestion(answeredQuestion);
answers.add(accessPackageAnswer);
AccessPackageAnswerString accessPackageAnswer1 = new AccessPackageAnswerString();
accessPackageAnswer1.setOdataType("#microsoft.graph.accessPackageAnswerString");
accessPackageAnswer1.setValue("This is my answer to a text input question.");
accessPackageAnswer1.setDisplayValue("This is my answer.");
AccessPackageTextInputQuestion answeredQuestion1 = new AccessPackageTextInputQuestion();
answeredQuestion1.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
answeredQuestion1.setId("7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6");
accessPackageAnswer1.setAnsweredQuestion(answeredQuestion1);
answers.add(accessPackageAnswer1);
accessPackageAssignmentRequest.setAnswers(answers);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 assignment = new ();
assignment.setAccessPackageId("977c7ff4-ef8f-4910-9d31-49048ddf3120");
additionalData.put("assignment", assignment);
accessPackageAssignmentRequest.setAdditionalData(additionalData);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```