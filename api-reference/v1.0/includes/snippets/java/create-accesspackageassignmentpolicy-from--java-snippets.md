---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.displayName = "New Policy";
accessPackageAssignmentPolicy.description = "policy for assignment";
accessPackageAssignmentPolicy.allowedTargetScope = AllowedTargetScope.NOT_SPECIFIED;
LinkedList<SubjectSet> specificAllowedTargetsList = new LinkedList<SubjectSet>();
accessPackageAssignmentPolicy.specificAllowedTargets = specificAllowedTargetsList;
ExpirationPattern expiration = new ExpirationPattern();
expiration.endDateTime = OffsetDateTimeSerializer.deserialize("null");
expiration.duration = DatatypeFactory.newInstance().newDuration("null");
expiration.type = ExpirationPatternType.NO_EXPIRATION;
accessPackageAssignmentPolicy.expiration = expiration;
AccessPackageAssignmentRequestorSettings requestorSettings = new AccessPackageAssignmentRequestorSettings();
requestorSettings.enableTargetsToSelfAddAccess = false;
requestorSettings.enableTargetsToSelfUpdateAccess = false;
requestorSettings.enableTargetsToSelfRemoveAccess = false;
requestorSettings.allowCustomAssignmentSchedule = true;
requestorSettings.enableOnBehalfRequestorsToAddAccess = false;
requestorSettings.enableOnBehalfRequestorsToUpdateAccess = false;
requestorSettings.enableOnBehalfRequestorsToRemoveAccess = false;
LinkedList<SubjectSet> onBehalfRequestorsList = new LinkedList<SubjectSet>();
requestorSettings.onBehalfRequestors = onBehalfRequestorsList;
accessPackageAssignmentPolicy.requestorSettings = requestorSettings;
AccessPackageAssignmentApprovalSettings requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
requestApprovalSettings.isApprovalRequiredForAdd = false;
requestApprovalSettings.isApprovalRequiredForUpdate = false;
LinkedList<AccessPackageApprovalStage> stagesList = new LinkedList<AccessPackageApprovalStage>();
requestApprovalSettings.stages = stagesList;
accessPackageAssignmentPolicy.requestApprovalSettings = requestApprovalSettings;
AccessPackage accessPackage = new AccessPackage();
accessPackage.id = "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b";
accessPackageAssignmentPolicy.accessPackage = accessPackage;

graphClient.identityGovernance().entitlementManagement().assignmentPolicies()
	.buildRequest()
	.post(accessPackageAssignmentPolicy);

```