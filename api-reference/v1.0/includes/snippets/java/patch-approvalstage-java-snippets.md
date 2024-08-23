---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApprovalStage approvalStage = new ApprovalStage();
approvalStage.setReviewResult("Approve");
approvalStage.setJustification("OK");
ApprovalStage result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentApprovals().byApprovalId("{approval-id}").stages().byApprovalStageId("{approvalStage-id}").patch(approvalStage);


```