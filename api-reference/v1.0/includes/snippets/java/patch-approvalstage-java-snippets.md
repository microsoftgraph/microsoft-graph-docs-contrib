---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApprovalStage approvalStage = new ApprovalStage();
approvalStage.reviewResult = "Approve";
approvalStage.justification = "OK";

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentApprovals("abd306ef-f7b2-4a10-9fd1-493454322489").stages("d4fa4045-4716-436d-aec5-57b0a713f095")
	.buildRequest()
	.patch(approvalStage);

```