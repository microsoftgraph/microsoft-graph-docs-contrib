---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var approvalStage = new ApprovalStage
{
	ReviewResult = "Approve",
	Justification = "OK"
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentApprovals["{approval-id}"].Stages["{approvalStage-id}"]
	.Request()
	.UpdateAsync(approvalStage);

```