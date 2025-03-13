---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setAccessPackageId("56ff43fd-6b05-48df-9634-956a777fce6d");
accessPackageAssignmentPolicy.setDisplayName("direct");
accessPackageAssignmentPolicy.setDescription("direct assignments by administrator");
accessPackageAssignmentPolicy.setAccessReviewSettings(null);
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.setScopeType("NoSubjects");
requestorSettings.setAcceptRequests(true);
LinkedList<UserSet> allowedRequestors = new LinkedList<UserSet>();
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