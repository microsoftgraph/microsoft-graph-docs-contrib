---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setDisplayName("New Policy");
accessPackageAssignmentPolicy.setDescription("policy for assignment");
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
accessPackage.setId("a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b");
accessPackageAssignmentPolicy.setAccessPackage(accessPackage);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().assignmentPolicies().post(accessPackageAssignmentPolicy);


```