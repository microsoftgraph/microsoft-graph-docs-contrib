---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.ResumePostRequestBody resumePostRequestBody = new com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.ResumePostRequestBody();
resumePostRequestBody.setSource("Contoso.SodCheckProcess");
resumePostRequestBody.setType("microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated");
AccessPackageAssignmentRequestCallbackData data = new AccessPackageAssignmentRequestCallbackData();
data.setOdataType("microsoft.graph.accessPackageAssignmentRequestCallbackData");
data.setStage(AccessPackageCustomExtensionStage.AssignmentRequestCreated);
data.setCustomExtensionStageInstanceId("957d0c50-466b-4840-bb5b-c92cea7141ff");
data.setCustomExtensionStageInstanceDetail("This user is all verified");
resumePostRequestBody.setData(data);
graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests().byAccessPackageAssignmentRequestId("{accessPackageAssignmentRequest-id}").resume().post(resumePostRequestBody);


```