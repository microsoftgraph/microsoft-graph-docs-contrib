---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setAccessPackageId("string (identifier)");
accessPackageAssignmentPolicy.setDisplayName("Users from connected organizations can request");
accessPackageAssignmentPolicy.setDescription("Allow users from configured connected organizations to request and be approved by their sponsors");
accessPackageAssignmentPolicy.setCanExtend(false);
accessPackageAssignmentPolicy.setDurationInDays(365);
accessPackageAssignmentPolicy.setExpirationDateTime(null);
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.setScopeType("AllExistingConnectedOrganizationSubjects");
requestorSettings.setAcceptRequests(true);
LinkedList<UserSet> allowedRequestors = new LinkedList<UserSet>();
requestorSettings.setAllowedRequestors(allowedRequestors);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
ApprovalSettings requestApprovalSettings = new ApprovalSettings();
requestApprovalSettings.setIsApprovalRequired(true);
requestApprovalSettings.setIsApprovalRequiredForExtension(false);
requestApprovalSettings.setIsRequestorJustificationRequired(true);
requestApprovalSettings.setApprovalMode("Serial");
LinkedList<ApprovalStage> approvalStages = new LinkedList<ApprovalStage>();
ApprovalStage approvalStage = new ApprovalStage();
approvalStage.setApprovalStageTimeOutInDays(14);
approvalStage.setIsApproverJustificationRequired(true);
approvalStage.setIsEscalationEnabled(true);
approvalStage.setEscalationTimeInMinutes(11520);
LinkedList<UserSet> primaryApprovers = new LinkedList<UserSet>();
GroupMembers userSet = new GroupMembers();
userSet.setOdataType("#microsoft.graph.groupMembers");
userSet.setIsBackup(true);
userSet.setId("string (identifier)");
userSet.setDescription("group for users from connected organizations which have no external sponsor");
primaryApprovers.add(userSet);
ExternalSponsors userSet1 = new ExternalSponsors();
userSet1.setOdataType("#microsoft.graph.externalSponsors");
userSet1.setIsBackup(false);
primaryApprovers.add(userSet1);
approvalStage.setPrimaryApprovers(primaryApprovers);
LinkedList<UserSet> escalationApprovers = new LinkedList<UserSet>();
SingleUser userSet2 = new SingleUser();
userSet2.setOdataType("#microsoft.graph.singleUser");
userSet2.setIsBackup(true);
userSet2.setId("string (identifier)");
userSet2.setDescription("user if the external sponsor does not respond");
escalationApprovers.add(userSet2);
approvalStage.setEscalationApprovers(escalationApprovers);
approvalStages.add(approvalStage);
ApprovalStage approvalStage1 = new ApprovalStage();
approvalStage1.setApprovalStageTimeOutInDays(14);
approvalStage1.setIsApproverJustificationRequired(true);
approvalStage1.setIsEscalationEnabled(true);
approvalStage1.setEscalationTimeInMinutes(11520);
LinkedList<UserSet> primaryApprovers1 = new LinkedList<UserSet>();
GroupMembers userSet3 = new GroupMembers();
userSet3.setOdataType("#microsoft.graph.groupMembers");
userSet3.setIsBackup(true);
userSet3.setId("string (identifier)");
userSet3.setDescription("group for users from connected organizations which have no internal sponsor");
primaryApprovers1.add(userSet3);
InternalSponsors userSet4 = new InternalSponsors();
userSet4.setOdataType("#microsoft.graph.internalSponsors");
userSet4.setIsBackup(false);
primaryApprovers1.add(userSet4);
approvalStage1.setPrimaryApprovers(primaryApprovers1);
LinkedList<UserSet> escalationApprovers1 = new LinkedList<UserSet>();
SingleUser userSet5 = new SingleUser();
userSet5.setOdataType("#microsoft.graph.singleUser");
userSet5.setIsBackup(true);
userSet5.setId("string (identifier)");
userSet5.setDescription("user if the internal sponsor does not respond");
escalationApprovers1.add(userSet5);
approvalStage1.setEscalationApprovers(escalationApprovers1);
approvalStages.add(approvalStage1);
requestApprovalSettings.setApprovalStages(approvalStages);
accessPackageAssignmentPolicy.setRequestApprovalSettings(requestApprovalSettings);
AssignmentReviewSettings accessReviewSettings = new AssignmentReviewSettings();
accessReviewSettings.setIsEnabled(true);
accessReviewSettings.setRecurrenceType("quarterly");
accessReviewSettings.setReviewerType("Self");
OffsetDateTime startDateTime = OffsetDateTime.parse("2020-04-01T07:59:59.998Z");
accessReviewSettings.setStartDateTime(startDateTime);
accessReviewSettings.setDurationInDays(25);
LinkedList<UserSet> reviewers = new LinkedList<UserSet>();
accessReviewSettings.setReviewers(reviewers);
accessPackageAssignmentPolicy.setAccessReviewSettings(accessReviewSettings);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies().post(accessPackageAssignmentPolicy);


```