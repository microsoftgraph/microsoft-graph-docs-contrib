---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setJustification("Access for direct employee");
accessPackageAssignmentRequest.setRequestType("UserAdd");
LinkedList<AccessPackageAnswer> answers = new LinkedList<AccessPackageAnswer>();
accessPackageAssignmentRequest.setAnswers(answers);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 assignment = new ();
assignment.setAccessPackageId("5b98f958-0dea-4a5b-836e-109dccbd530c");
 schedule = new ();
schedule.setStartDateTime(null);
schedule.setStopDateTime(null);
assignment.setSchedule(schedule);
assignment.setAssignmentPolicyId("c5f7847f-83a8-4315-a754-d94a6f39b875");
 target = new ();
target.setDisplayName("Idris Ibrahim");
target.setEmail("IdrisIbrahim@woodgrovebank.com");
target.setObjectId("21aceaba-fe13-4e3b-aa8c-4c588d5e7387");
target.setSubjectType("user");
assignment.setTarget(target);
additionalData.put("assignment", assignment);
accessPackageAssignmentRequest.setAdditionalData(additionalData);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```