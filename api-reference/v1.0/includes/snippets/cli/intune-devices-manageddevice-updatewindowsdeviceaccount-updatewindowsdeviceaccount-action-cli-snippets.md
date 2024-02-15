---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management managed-devices update-windows-device-account post --managed-device-id {managedDevice-id} --body '{\
  "updateWindowsDeviceAccountActionParameter": {\
    "@odata.type": "microsoft.graph.updateWindowsDeviceAccountActionParameter",\
    "deviceAccount": {\
      "@odata.type": "microsoft.graph.windowsDeviceAccount",\
      "password": "Password value"\
    },\
    "passwordRotationEnabled": true,\
    "calendarSyncEnabled": true,\
    "deviceAccountEmail": "Device Account Email value",\
    "exchangeServer": "Exchange Server value",\
    "sessionInitiationProtocalAddress": "Session Initiation Protocal Address value"\
  }\
}\
'

```