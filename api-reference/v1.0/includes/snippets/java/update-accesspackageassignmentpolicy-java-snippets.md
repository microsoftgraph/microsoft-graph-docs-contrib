---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.id = "87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187";
accessPackageAssignmentPolicy.displayName = "All Users";
accessPackageAssignmentPolicy.description = "All users can request for access to the directory.";
accessPackageAssignmentPolicy.allowedTargetScope = AllowedTargetScope.ALL_DIRECTORY_USERS;
accessPackageAssignmentPolicy.automaticRequestSettings = null;
LinkedList<SubjectSet> specificAllowedTargetsList = new LinkedList<SubjectSet>();
accessPackageAssignmentPolicy.specificAllowedTargets = specificAllowedTargetsList;
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.NO_EXPIRATION;
accessPackageAssignmentPolicy.expiration = expiration;
AccessPackageAssignmentRequestorSettings requestorSettings = new AccessPackageAssignmentRequestorSettings();
requestorSettings.enableTargetsToSelfAddAccess = true;
requestorSettings.enableTargetsToSelfUpdateAccess = false;
requestorSettings.enableTargetsToSelfRemoveAccess = true;
requestorSettings.allowCustomAssignmentSchedule = false;
requestorSettings.enableOnBehalfRequestorsToAddAccess = false;
requestorSettings.enableOnBehalfRequestorsToUpdateAccess = false;
requestorSettings.enableOnBehalfRequestorsToRemoveAccess = false;
LinkedList<SubjectSet> onBehalfRequestorsList = new LinkedList<SubjectSet>();
requestorSettings.onBehalfRequestors = onBehalfRequestorsList;
accessPackageAssignmentPolicy.requestorSettings = requestorSettings;
AccessPackageAssignmentApprovalSettings requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
requestApprovalSettings.isApprovalRequiredForAdd = true;
requestApprovalSettings.isApprovalRequiredForUpdate = false;
LinkedList<AccessPackageApprovalStage> stagesList = new LinkedList<AccessPackageApprovalStage>();
AccessPackageApprovalStage stages = new AccessPackageApprovalStage();
stages.durationBeforeAutomaticDenial = DatatypeFactory.newInstance().newDuration("P2D");
stages.isApproverJustificationRequired = false;
stages.isEscalationEnabled = false;
stages.durationBeforeEscalation = DatatypeFactory.newInstance().newDuration("PT0S");
LinkedList<SubjectSet> primaryApproversList = new LinkedList<SubjectSet>();
RequestorManager primaryApprovers = new RequestorManager();
primaryApprovers.managerLevel = 1;
primaryApproversList.add(primaryApprovers);
stages.primaryApprovers = primaryApproversList;
LinkedList<SubjectSet> fallbackPrimaryApproversList = new LinkedList<SubjectSet>();
SingleUser fallbackPrimaryApprovers = new SingleUser();
fallbackPrimaryApprovers.userId = "e6bf4d7d-6824-4dd0-809d-5bf42d4817c2";
fallbackPrimaryApprovers.description = "user";
fallbackPrimaryApproversList.add(fallbackPrimaryApprovers);
stages.fallbackPrimaryApprovers = fallbackPrimaryApproversList;
LinkedList<SubjectSet> escalationApproversList = new LinkedList<SubjectSet>();
stages.escalationApprovers = escalationApproversList;
LinkedList<SubjectSet> fallbackEscalationApproversList = new LinkedList<SubjectSet>();
stages.fallbackEscalationApprovers = fallbackEscalationApproversList;
stagesList.add(stages);
requestApprovalSettings.stages = stagesList;
accessPackageAssignmentPolicy.requestApprovalSettings = requestApprovalSettings;
AccessPackage accessPackage = new AccessPackage();
accessPackage.id = "49d2c59b-0a81-463d-a8ec-ddad3935d8a0";
accessPackageAssignmentPolicy.accessPackage = accessPackage;

graphClient.identityGovernance().entitlementManagement().assignmentPolicies("87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187")
	.buildRequest()
	.put(accessPackageAssignmentPolicy);

```