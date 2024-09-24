---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setId("87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187");
accessPackageAssignmentPolicy.setDisplayName("All Users");
accessPackageAssignmentPolicy.setDescription("All users can request for access to the directory.");
accessPackageAssignmentPolicy.setAllowedTargetScope(AllowedTargetScope.AllDirectoryUsers);
accessPackageAssignmentPolicy.setAutomaticRequestSettings(null);
LinkedList<SubjectSet> specificAllowedTargets = new LinkedList<SubjectSet>();
accessPackageAssignmentPolicy.setSpecificAllowedTargets(specificAllowedTargets);
ExpirationPattern expiration = new ExpirationPattern();
expiration.setType(ExpirationPatternType.NoExpiration);
accessPackageAssignmentPolicy.setExpiration(expiration);
AccessPackageAssignmentRequestorSettings requestorSettings = new AccessPackageAssignmentRequestorSettings();
requestorSettings.setEnableTargetsToSelfAddAccess(true);
requestorSettings.setEnableTargetsToSelfUpdateAccess(false);
requestorSettings.setEnableTargetsToSelfRemoveAccess(true);
requestorSettings.setAllowCustomAssignmentSchedule(false);
requestorSettings.setEnableOnBehalfRequestorsToAddAccess(false);
requestorSettings.setEnableOnBehalfRequestorsToUpdateAccess(false);
requestorSettings.setEnableOnBehalfRequestorsToRemoveAccess(false);
LinkedList<SubjectSet> onBehalfRequestors = new LinkedList<SubjectSet>();
requestorSettings.setOnBehalfRequestors(onBehalfRequestors);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
AccessPackageAssignmentApprovalSettings requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
requestApprovalSettings.setIsApprovalRequiredForAdd(true);
requestApprovalSettings.setIsApprovalRequiredForUpdate(false);
LinkedList<AccessPackageApprovalStage> stages = new LinkedList<AccessPackageApprovalStage>();
AccessPackageApprovalStage accessPackageApprovalStage = new AccessPackageApprovalStage();
PeriodAndDuration durationBeforeAutomaticDenial = PeriodAndDuration.ofDuration(Duration.parse("P2D"));
accessPackageApprovalStage.setDurationBeforeAutomaticDenial(durationBeforeAutomaticDenial);
accessPackageApprovalStage.setIsApproverJustificationRequired(false);
accessPackageApprovalStage.setIsEscalationEnabled(false);
PeriodAndDuration durationBeforeEscalation = PeriodAndDuration.ofDuration(Duration.parse("PT0S"));
accessPackageApprovalStage.setDurationBeforeEscalation(durationBeforeEscalation);
LinkedList<SubjectSet> primaryApprovers = new LinkedList<SubjectSet>();
RequestorManager subjectSet = new RequestorManager();
subjectSet.setOdataType("#microsoft.graph.requestorManager");
subjectSet.setManagerLevel(1);
primaryApprovers.add(subjectSet);
accessPackageApprovalStage.setPrimaryApprovers(primaryApprovers);
LinkedList<SubjectSet> fallbackPrimaryApprovers = new LinkedList<SubjectSet>();
SingleUser subjectSet1 = new SingleUser();
subjectSet1.setOdataType("#microsoft.graph.singleUser");
subjectSet1.setUserId("e6bf4d7d-6824-4dd0-809d-5bf42d4817c2");
subjectSet1.setDescription("user");
fallbackPrimaryApprovers.add(subjectSet1);
accessPackageApprovalStage.setFallbackPrimaryApprovers(fallbackPrimaryApprovers);
LinkedList<SubjectSet> escalationApprovers = new LinkedList<SubjectSet>();
accessPackageApprovalStage.setEscalationApprovers(escalationApprovers);
LinkedList<SubjectSet> fallbackEscalationApprovers = new LinkedList<SubjectSet>();
accessPackageApprovalStage.setFallbackEscalationApprovers(fallbackEscalationApprovers);
stages.add(accessPackageApprovalStage);
requestApprovalSettings.setStages(stages);
accessPackageAssignmentPolicy.setRequestApprovalSettings(requestApprovalSettings);
AccessPackage accessPackage = new AccessPackage();
accessPackage.setId("49d2c59b-0a81-463d-a8ec-ddad3935d8a0");
accessPackageAssignmentPolicy.setAccessPackage(accessPackage);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().assignmentPolicies().byAccessPackageAssignmentPolicyId("{accessPackageAssignmentPolicy-id}").put(accessPackageAssignmentPolicy);


```