---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.accessPackageId = "88203d16-0e31-41d4-87b2-dd402f1435e9";
accessPackageAssignmentPolicy.displayName = "Specific users";
accessPackageAssignmentPolicy.description = "Specific users can request assignment";
accessPackageAssignmentPolicy.accessReviewSettings = null;
accessPackageAssignmentPolicy.durationInDays = 30;
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.scopeType = "SpecificDirectorySubjects";
requestorSettings.acceptRequests = true;
LinkedList<UserSet> allowedRequestorsList = new LinkedList<UserSet>();
SingleUser allowedRequestors = new SingleUser();
allowedRequestors.isBackup = false;
allowedRequestors.id = "007d1c7e-7fa8-4e33-b678-5e437acdcddc";
allowedRequestors.description = "Requestor1";
allowedRequestorsList.add(allowedRequestors);
requestorSettings.allowedRequestors = allowedRequestorsList;
accessPackageAssignmentPolicy.requestorSettings = requestorSettings;
ApprovalSettings requestApprovalSettings = new ApprovalSettings();
requestApprovalSettings.isApprovalRequired = false;
requestApprovalSettings.isApprovalRequiredForExtension = false;
requestApprovalSettings.isRequestorJustificationRequired = false;
requestApprovalSettings.approvalMode = "NoApproval";
LinkedList<ApprovalStage> approvalStagesList = new LinkedList<ApprovalStage>();
requestApprovalSettings.approvalStages = approvalStagesList;
accessPackageAssignmentPolicy.requestApprovalSettings = requestApprovalSettings;

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies()
	.buildRequest()
	.post(accessPackageAssignmentPolicy);

```