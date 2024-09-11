---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.approval_stage import ApprovalStage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApprovalStage(
	review_result = "Approve",
	justification = "OK",
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_approvals.by_approval_id('approval-id').stages.by_approval_stage_id('approvalStage-id').patch(request_body)


```