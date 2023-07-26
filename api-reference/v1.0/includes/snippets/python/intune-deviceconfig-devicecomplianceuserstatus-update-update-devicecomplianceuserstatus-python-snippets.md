---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceComplianceUserStatus()
request_body.@odata_type = '#microsoft.graph.deviceComplianceUserStatus'

request_body.user_display_name = 'User Display Name value'

request_body.DevicesCount = 12

request_body.status(ComplianceStatus.NotApplicable('compliancestatus.notapplicable'))

request_body.lastReportedDateTime = DateTime('2017-01-01T00:00:17.7769392-08:00')

request_body.user_principal_name = 'User Principal Name value'




result = await client.device_management.device_compliance_policies.by_device_compliance_policie_id('deviceCompliancePolicy-id').user_statuses.by_user_statuse_id('deviceComplianceUserStatus-id').patch(request_body = request_body)


```