---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.ResumePostRequestBody resumePostRequestBody = new com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.ResumePostRequestBody();
resumePostRequestBody.setSource("Contoso.AADProcess");
resumePostRequestBody.setType("microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated");
AccessPackageRequestApprovalStageCallbackConfiguration data = new AccessPackageRequestApprovalStageCallbackConfiguration();
data.setOdataType("microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("stage", "assignmentRequestCreated");
additionalData.put("customExtensionStageInstanceId", "7bf58d34-b3f9-4bae-8deb-abcd25cddea1");
additionalData.put("customExtensionStageInstanceDetail", "Completed.");
data.setAdditionalData(additionalData);
resumePostRequestBody.setData(data);
graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests().byAccessPackageAssignmentRequestId("{accessPackageAssignmentRequest-id}").resume().post(resumePostRequestBody);


```