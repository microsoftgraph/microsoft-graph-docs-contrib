---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management device-compliance-policies scheduled-actions-for-rule scheduled-action-configurations create --device-compliance-policy-id {deviceCompliancePolicy-id} --device-compliance-scheduled-action-for-rule-id {deviceComplianceScheduledActionForRule-id} --body '{\
  "@odata.type": "#microsoft.graph.deviceComplianceActionItem",\
  "gracePeriodHours": 0,\
  "actionType": "notification",\
  "notificationTemplateId": "Notification Template Id value",\
  "notificationMessageCCList": [\
    "Notification Message CCList value"\
  ]\
}\
'

```