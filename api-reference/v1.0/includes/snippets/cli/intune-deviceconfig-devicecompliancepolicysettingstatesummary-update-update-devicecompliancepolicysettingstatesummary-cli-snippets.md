---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-compliance-policy-setting-state-summaries patch --device-compliance-policy-setting-state-summary-id {deviceCompliancePolicySettingStateSummary-id} --body '{\
  "@odata.type": "#microsoft.graph.deviceCompliancePolicySettingStateSummary",\
  "setting": "Setting value",\
  "settingName": "Setting Name value",\
  "platformType": "iOS",\
  "unknownDeviceCount": 2,\
  "notApplicableDeviceCount": 8,\
  "compliantDeviceCount": 4,\
  "remediatedDeviceCount": 5,\
  "nonCompliantDeviceCount": 7,\
  "errorDeviceCount": 0,\
  "conflictDeviceCount": 3\
}\
'

```