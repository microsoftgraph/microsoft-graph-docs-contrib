---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setDisplayName("API Created policy with updated customExtensionStageSettings");
accessPackageAssignmentPolicy.setDescription("policy with updated customExtensionStageSettings");
RequestorSettings requestorSettings = new RequestorSettings();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("enableTargetsToSelfAddAccess", false);
additionalData.put("enableTargetsToSelfUpdateAccess", false);
additionalData.put("enableTargetsToSelfRemoveAccess", false);
additionalData.put("allowCustomAssignmentSchedule", true);
additionalData.put("enableOnBehalfRequestorsToAddAccess", false);
additionalData.put("enableOnBehalfRequestorsToUpdateAccess", false);
additionalData.put("enableOnBehalfRequestorsToRemoveAccess", false);
LinkedList<Object> onBehalfRequestors = new LinkedList<Object>();
additionalData.put("onBehalfRequestors", onBehalfRequestors);
requestorSettings.setAdditionalData(additionalData);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
ApprovalSettings requestApprovalSettings = new ApprovalSettings();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("isApprovalRequiredForAdd", false);
additionalData1.put("isApprovalRequiredForUpdate", false);
LinkedList<Object> stages = new LinkedList<Object>();
additionalData1.put("stages", stages);
requestApprovalSettings.setAdditionalData(additionalData1);
accessPackageAssignmentPolicy.setRequestApprovalSettings(requestApprovalSettings);
AccessPackage accessPackage = new AccessPackage();
accessPackage.setId("f9afd2e3-7486-40df-9c35-aa2ae108c495");
accessPackageAssignmentPolicy.setAccessPackage(accessPackage);
LinkedList<CustomExtensionStageSetting> customExtensionStageSettings = new LinkedList<CustomExtensionStageSetting>();
CustomExtensionStageSetting customExtensionStageSetting = new CustomExtensionStageSetting();
customExtensionStageSetting.setStage(AccessPackageCustomExtensionStage.AssignmentRequestCreated);
AccessPackageAssignmentRequestWorkflowExtension customExtension = new AccessPackageAssignmentRequestWorkflowExtension();
customExtension.setOdataType("#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension");
customExtension.setId("bebe7873-1f0d-4db9-b6c3-01f7ebfe8476");
customExtensionStageSetting.setCustomExtension(customExtension);
customExtensionStageSettings.add(customExtensionStageSetting);
accessPackageAssignmentPolicy.setCustomExtensionStageSettings(customExtensionStageSettings);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("allowedTargetScope", "notSpecified");
LinkedList<Object> specificAllowedTargets = new LinkedList<Object>();
additionalData2.put("specificAllowedTargets", specificAllowedTargets);
 expiration = new ();
expiration.setEndDateTime(null);
expiration.setDuration(null);
expiration.setType("noExpiration");
additionalData2.put("expiration", expiration);
accessPackageAssignmentPolicy.setAdditionalData(additionalData2);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies().byAccessPackageAssignmentPolicyId("{accessPackageAssignmentPolicy-id}").put(accessPackageAssignmentPolicy);


```