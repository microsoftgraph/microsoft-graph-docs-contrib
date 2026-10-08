---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.ResumePostRequestBody resumePostRequestBody = new com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.ResumePostRequestBody();
resumePostRequestBody.setSource("Contoso.CustoEXT");
resumePostRequestBody.setType("microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated");
CustomExtensionData data = new CustomExtensionData();
data.setOdataType("microsoft.graph.microsoft.graph.assignmentRequestApprovalStageCallbackData");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 approvalStage = new ();
approvalStage.setDurationBeforeAutomaticDenial("P2D");
LinkedList<Object> escalationApprovers = new LinkedList<Object>();
approvalStage.setEscalationApprovers(escalationApprovers);
LinkedList<Object> fallbackEscalationApprovers = new LinkedList<Object>();
approvalStage.setFallbackEscalationApprovers(fallbackEscalationApprovers);
LinkedList<Object> fallbackPrimaryApprovers = new LinkedList<Object>();
approvalStage.setFallbackPrimaryApprovers(fallbackPrimaryApprovers);
approvalStage.setIsApproverJustificationRequired(false);
approvalStage.setIsEscalationEnabled(false);
LinkedList<Object> primaryApprovers = new LinkedList<Object>();
 property = new ();
property.setOdataType("#microsoft.graph.singleUser");
property.setDescription("Primary approver of access package assignment.");
property.setId("");
property.setIsBackup(false);
primaryApprovers.add(property);
approvalStage.setPrimaryApprovers(primaryApprovers);
additionalData.put("approvalStage", approvalStage);
additionalData.put("customExtensionStageInstanceDetail", "A approval stage from Logic Apps");
additionalData.put("customExtensionStageInstanceId", "@{triggerBody()?['CustomExtensionStageInstanceId']}");
additionalData.put("stage", "assignmentRequestDeterminingApprovalRequirements");
data.setAdditionalData(additionalData);
resumePostRequestBody.setData(data);
resumePostRequestBody.setSource("LogicApps");
resumePostRequestBody.setType("microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated");
graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests().byAccessPackageAssignmentRequestId("{accessPackageAssignmentRequest-id}").resume().post(resumePostRequestBody);


```