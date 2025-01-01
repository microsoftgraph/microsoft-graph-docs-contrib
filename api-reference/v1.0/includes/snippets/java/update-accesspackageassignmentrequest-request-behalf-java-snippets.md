---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
AccessPackageAssignment assignment = new AccessPackageAssignment();
EntitlementManagementSchedule schedule = new EntitlementManagementSchedule();
schedule.setStartDateTime(null);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("stopDateTime", null);
schedule.setAdditionalData(additionalData);
assignment.setSchedule(schedule);
AccessPackageSubject target = new AccessPackageSubject();
target.setDisplayName("Idris Ibrahim");
target.setEmail("IdrisIbrahim@woodgrovebank.com");
target.setObjectId("21aceaba-fe13-4e3b-aa8c-4c588d5e7387");
target.setSubjectType(AccessPackageSubjectType.User);
assignment.setTarget(target);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("accessPackageId", "5b98f958-0dea-4a5b-836e-109dccbd530c");
additionalData1.put("assignmentPolicyId", "c5f7847f-83a8-4315-a754-d94a6f39b875");
assignment.setAdditionalData(additionalData1);
accessPackageAssignmentRequest.setAssignment(assignment);
accessPackageAssignmentRequest.setRequestType(AccessPackageRequestType.UserAdd);
LinkedList<AccessPackageAnswer> answers = new LinkedList<AccessPackageAnswer>();
accessPackageAssignmentRequest.setAnswers(answers);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("justification", "Access for direct employee");
accessPackageAssignmentRequest.setAdditionalData(additionalData2);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```