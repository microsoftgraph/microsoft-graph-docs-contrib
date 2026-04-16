---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.policy_approval import PolicyApproval
from msgraph_beta.generated.models.approval_status import ApprovalStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PolicyApproval(
	odata_type = "#microsoft.graph.windowsUpdates.policyApproval",
	catalog_entry_id = "1d8864c1-531f-4d5b-8225-8653ef4316d8",
	status = ApprovalStatus.Approved,
)

result = await graph_client.admin.windows.updates.policies.by_policy_id('policy-id').approvals.post(request_body)


```