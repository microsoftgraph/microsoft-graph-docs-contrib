---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.compliance_change import ComplianceChange

graph_client = GraphServiceClient(credentials, scopes)

request_body = ComplianceChange(
	odata_type = "#microsoft.graph.windowsUpdates.complianceChange",
	is_revoked = True,
)

result = await graph_client.admin.windows.updates.update_policies.by_update_policy_id('updatePolicy-id').compliance_changes.by_compliance_change_id('complianceChange-id').patch(request_body)


```