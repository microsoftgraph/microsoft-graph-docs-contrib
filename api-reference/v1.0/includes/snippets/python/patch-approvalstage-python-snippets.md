---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ApprovalStage()
request_body.review_result = 'Approve'

request_body.justification = 'OK'




result = await client.identity_governance.entitlement_management.acce_package_assignment_approvals.by_acce_package_assignment_approval_id('approval-id').stages.by_stage_id('approvalStage-id').patch(request_body = request_body)


```