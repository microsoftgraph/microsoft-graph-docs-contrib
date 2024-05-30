---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.approval_stage import ApprovalStage

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApprovalStage(
	review_result = "Approve",
	justification = "OK",
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_approvals.by_approval_id('approval-id').stages.by_approval_stage_id('approvalStage-id').patch(request_body)


```