---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setDisplayName("API Created policy with updated customExtensionStageSettings");
accessPackageAssignmentPolicy.setDescription("policy with updated customExtensionStageSettings");
accessPackageAssignmentPolicy.setAllowedTargetScope(AllowedTargetScope.NotSpecified);
LinkedList<SubjectSet> specificAllowedTargets = new LinkedList<SubjectSet>();
accessPackageAssignmentPolicy.setSpecificAllowedTargets(specificAllowedTargets);
ExpirationPattern expiration = new ExpirationPattern();
expiration.setEndDateTime(null);
expiration.setDuration(null);
expiration.setType(ExpirationPatternType.NoExpiration);
accessPackageAssignmentPolicy.setExpiration(expiration);
AccessPackageAssignmentRequestorSettings requestorSettings = new AccessPackageAssignmentRequestorSettings();
requestorSettings.setEnableTargetsToSelfAddAccess(false);
requestorSettings.setEnableTargetsToSelfUpdateAccess(false);
requestorSettings.setEnableTargetsToSelfRemoveAccess(false);
requestorSettings.setAllowCustomAssignmentSchedule(true);
requestorSettings.setEnableOnBehalfRequestorsToAddAccess(false);
requestorSettings.setEnableOnBehalfRequestorsToUpdateAccess(false);
requestorSettings.setEnableOnBehalfRequestorsToRemoveAccess(false);
LinkedList<SubjectSet> onBehalfRequestors = new LinkedList<SubjectSet>();
requestorSettings.setOnBehalfRequestors(onBehalfRequestors);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
AccessPackageAssignmentApprovalSettings requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
requestApprovalSettings.setIsApprovalRequiredForAdd(false);
requestApprovalSettings.setIsApprovalRequiredForUpdate(false);
LinkedList<AccessPackageApprovalStage> stages = new LinkedList<AccessPackageApprovalStage>();
requestApprovalSettings.setStages(stages);
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
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().assignmentPolicies().byAccessPackageAssignmentPolicyId("{accessPackageAssignmentPolicy-id}").put(accessPackageAssignmentPolicy);


```