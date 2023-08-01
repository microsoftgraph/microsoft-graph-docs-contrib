---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceComplianceSettingState()
request_body.@odata_type = '#microsoft.graph.deviceComplianceSettingState'

request_body.setting = 'Setting value'

request_body.setting_name = 'Setting Name value'

request_body.device_id = 'Device Id value'

request_body.device_name = 'Device Name value'

request_body.user_id = 'User Id value'

request_body.user_email = 'User Email value'

request_body.user_name = 'User Name value'

request_body.user_principal_name = 'User Principal Name value'

request_body.device_model = 'Device Model value'

request_body.state(ComplianceStatus.NotApplicable('compliancestatus.notapplicable'))

request_body.complianceGracePeriodExpirationDateTime = DateTime('2016-12-31T23:56:44.951111-08:00')




result = await client.device_management.device_compliance_policy_setting_state_summaries.by_device_compliance_policy_setting_state_summarie_id('deviceCompliancePolicySettingStateSummary-id').device_compliance_setting_states.by_device_compliance_setting_state_id('deviceComplianceSettingState-id').patch(request_body = request_body)


```