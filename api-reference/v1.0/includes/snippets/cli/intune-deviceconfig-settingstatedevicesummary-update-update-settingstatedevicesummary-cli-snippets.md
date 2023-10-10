---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management device-configurations device-setting-state-summaries patch --device-configuration-id {deviceConfiguration-id} --setting-state-device-summary-id {settingStateDeviceSummary-id} --body '{\
  "@odata.type": "#microsoft.graph.settingStateDeviceSummary",\
  "settingName": "Setting Name value",\
  "instancePath": "Instance Path value",\
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