---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setDisplayName("Dynamic approver policy");
accessPackageAssignmentPolicy.setDescription("Dynamic approver policy");
LinkedList<AccessPackageQuestion> questions = new LinkedList<AccessPackageQuestion>();
accessPackageAssignmentPolicy.setQuestions(questions);
AccessPackageAssignmentRequestorSettings requestorSettings = new AccessPackageAssignmentRequestorSettings();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("scopeType", "AllExistingDirectorySubjects");
additionalData.put("acceptRequests", true);
LinkedList<Object> allowedRequestors = new LinkedList<Object>();
additionalData.put("allowedRequestors", allowedRequestors);
requestorSettings.setAdditionalData(additionalData);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
AccessPackageAssignmentApprovalSettings requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
requestApprovalSettings.setIsRequestorJustificationRequired(true);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("isApprovalRequired", true);
additionalData1.put("isApprovalRequiredForExtension", false);
additionalData1.put("approvalMode", "SingleStage");
LinkedList<Object> approvalStages = new LinkedList<Object>();
 property = new ();
property.setOdataType("#microsoft.graph.accessPackageDynamicApprovalStage");
 customExtension = new ();
customExtension.setOdataType("#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension");
customExtension.setId("52036a43-10b5-444d-a1a2-d4f240420239");
property.setCustomExtension(customExtension);
approvalStages.add(property);
additionalData1.put("approvalStages", approvalStages);
requestApprovalSettings.setAdditionalData(additionalData1);
accessPackageAssignmentPolicy.setRequestApprovalSettings(requestApprovalSettings);
LinkedList<CustomExtensionStageSetting> customExtensionStageSettings = new LinkedList<CustomExtensionStageSetting>();
CustomExtensionStageSetting customExtensionStageSetting = new CustomExtensionStageSetting();
customExtensionStageSetting.setStage(AccessPackageCustomExtensionStage.AssignmentRequestCreated);
AccessPackageAssignmentRequestWorkflowExtension customExtension1 = new AccessPackageAssignmentRequestWorkflowExtension();
customExtension1.setOdataType("#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension");
customExtension1.setId("52036a43-10b5-444d-a1a2-d4f240420239");
customExtensionStageSetting.setCustomExtension(customExtension1);
customExtensionStageSettings.add(customExtensionStageSetting);
accessPackageAssignmentPolicy.setCustomExtensionStageSettings(customExtensionStageSettings);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("@odata.context", "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/$entity");
additionalData2.put("canExtend", false);
additionalData2.put("durationInDays", 0);
additionalData2.put("expirationDateTime", null);
additionalData2.put("accessPackageId", "fc29cdca-57f6-47e3-b20c-3fa18e4826ac");
additionalData2.put("accessReviewSettings", null);
 accessPackageNotificationSettings = new ();
accessPackageNotificationSettings.setIsAssignmentNotificationDisabled(false);
additionalData2.put("accessPackageNotificationSettings", accessPackageNotificationSettings);
 verifiableCredentialSettings = new ();
LinkedList<Object> credentialTypes = new LinkedList<Object>();
verifiableCredentialSettings.setCredentialTypes(credentialTypes);
additionalData2.put("verifiableCredentialSettings", verifiableCredentialSettings);
accessPackageAssignmentPolicy.setAdditionalData(additionalData2);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().assignmentPolicies().post(accessPackageAssignmentPolicy);


```