---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ComplianceChange()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.complianceChange'

request_body.is_revoked = True




result = await client.admin.windows.updates.update_policies.by_update_policie_id('updatePolicy-id').compliance_changes.by_compliance_change_id('complianceChange-id').patch(request_body = request_body)


```