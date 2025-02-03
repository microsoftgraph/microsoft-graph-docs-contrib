---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setAccessPackageId("88203d16-0e31-41d4-87b2-dd402f1435e9");
accessPackageAssignmentPolicy.setDisplayName("Specific users");
accessPackageAssignmentPolicy.setDescription("Specific users can request assignment");
accessPackageAssignmentPolicy.setAccessReviewSettings(null);
accessPackageAssignmentPolicy.setDurationInDays(30);
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.setScopeType("SpecificDirectorySubjects");
requestorSettings.setAcceptRequests(true);
LinkedList<UserSet> allowedRequestors = new LinkedList<UserSet>();
SingleUser userSet = new SingleUser();
userSet.setOdataType("#microsoft.graph.singleUser");
userSet.setIsBackup(false);
userSet.setId("007d1c7e-7fa8-4e33-b678-5e437acdcddc");
userSet.setDescription("Requestor1");
allowedRequestors.add(userSet);
requestorSettings.setAllowedRequestors(allowedRequestors);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
ApprovalSettings requestApprovalSettings = new ApprovalSettings();
requestApprovalSettings.setIsApprovalRequired(false);
requestApprovalSettings.setIsApprovalRequiredForExtension(false);
requestApprovalSettings.setIsRequestorJustificationRequired(false);
requestApprovalSettings.setApprovalMode("NoApproval");
LinkedList<ApprovalStage> approvalStages = new LinkedList<ApprovalStage>();
requestApprovalSettings.setApprovalStages(approvalStages);
accessPackageAssignmentPolicy.setRequestApprovalSettings(requestApprovalSettings);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies().post(accessPackageAssignmentPolicy);


```