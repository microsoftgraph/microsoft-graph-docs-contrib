---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setRequestType(AccessPackageRequestType.UserUpdate);
LinkedList<AccessPackageAnswer> answers = new LinkedList<AccessPackageAnswer>();
AccessPackageAnswerString accessPackageAnswer = new AccessPackageAnswerString();
accessPackageAnswer.setOdataType("#microsoft.graph.accessPackageAnswerString");
accessPackageAnswer.setValue("My updated answer.");
AccessPackageTextInputQuestion answeredQuestion = new AccessPackageTextInputQuestion();
answeredQuestion.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
answeredQuestion.setId("0d31cc60-968e-4f92-955b-443fed03d6f6");
accessPackageAnswer.setAnsweredQuestion(answeredQuestion);
answers.add(accessPackageAnswer);
accessPackageAssignmentRequest.setAnswers(answers);
EntitlementManagementSchedule schedule = new EntitlementManagementSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2024-09-18T20:49:16.17Z");
schedule.setStartDateTime(startDateTime);
schedule.setRecurrence(null);
ExpirationPattern expiration = new ExpirationPattern();
OffsetDateTime endDateTime = OffsetDateTime.parse("2024-10-18T20:49:15.17Z");
expiration.setEndDateTime(endDateTime);
expiration.setDuration(null);
expiration.setType(ExpirationPatternType.AfterDateTime);
schedule.setExpiration(expiration);
accessPackageAssignmentRequest.setSchedule(schedule);
AccessPackageAssignment assignment = new AccessPackageAssignment();
assignment.setId("329f8dac-8062-4c1b-a9b8-39b7132f9bff");
accessPackageAssignmentRequest.setAssignment(assignment);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```