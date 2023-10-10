---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ApprovalStage(
	review_result = "Approve",
	justification = "OK",
)

result = await graph_client.identity_governance.entitlement_management.acce_package_assignment_approvals.by_acce_package_assignment_approval_id('approval-id').stages.by_stage_id('approvalStage-id').patch(body = request_body)


```