---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.content_approval import ContentApproval
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ContentApproval(
	odata_type = "#microsoft.graph.windowsUpdates.contentApproval",
	is_revoked = True,
)

result = await graph_client.admin.windows.updates.update_policies.by_update_policy_id('updatePolicy-id').compliance_changes.by_compliance_change_id('complianceChange-id').patch(request_body)


```