---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ComplianceChange(
	odata_type = "#microsoft.graph.windowsUpdates.complianceChange",
	is_revoked = True,
)

result = await graph_client.admin.windows.updates.update_policies.by_update_policie_id('updatePolicy-id').compliance_changes.by_compliance_change_id('complianceChange-id').patch(body = request_body)


```