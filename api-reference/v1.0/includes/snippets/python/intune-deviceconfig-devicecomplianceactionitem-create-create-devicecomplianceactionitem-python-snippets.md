---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceComplianceActionItem()
request_body.@odata_type = '#microsoft.graph.deviceComplianceActionItem'

request_body.GracePeriodHours = 0

request_body.actiontype(DeviceComplianceActionType.Notification('devicecomplianceactiontype.notification'))

request_body.notification_template_id = 'Notification Template Id value'

request_body.NotificationMessageCCList(['Notification Message CCList value', ])




result = await client.device_management.device_compliance_policies.by_device_compliance_policie_id('deviceCompliancePolicy-id').scheduled_action_for_rule.by_scheduled_action_for_rule_id('deviceComplianceScheduledActionForRule-id').scheduled_action_configurations.post(request_body = request_body)


```