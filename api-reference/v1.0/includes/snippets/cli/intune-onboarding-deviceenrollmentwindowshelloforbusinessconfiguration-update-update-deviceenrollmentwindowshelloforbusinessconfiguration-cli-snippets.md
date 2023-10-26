---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-enrollment-configurations patch --device-enrollment-configuration-id {deviceEnrollmentConfiguration-id} --body '{\
  "@odata.type": "#microsoft.graph.deviceEnrollmentWindowsHelloForBusinessConfiguration",\
  "displayName": "Display Name value",\
  "description": "Description value",\
  "priority": 8,\
  "version": 7,\
  "pinMinimumLength": 0,\
  "pinMaximumLength": 0,\
  "pinUppercaseCharactersUsage": "required",\
  "pinLowercaseCharactersUsage": "required",\
  "pinSpecialCharactersUsage": "required",\
  "state": "enabled",\
  "securityDeviceRequired": true,\
  "unlockWithBiometricsEnabled": true,\
  "remotePassportEnabled": true,\
  "pinPreviousBlockCount": 5,\
  "pinExpirationInDays": 3,\
  "enhancedBiometricsState": "enabled"\
}\
'

```