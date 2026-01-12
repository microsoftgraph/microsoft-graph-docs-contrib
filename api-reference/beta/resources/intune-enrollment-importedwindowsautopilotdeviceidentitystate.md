---
title: "importedWindowsAutopilotDeviceIdentityState resource type"
description: "Intune Enrollment Importedwindowsautopilotdeviceidentitystate Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# importedWindowsAutopilotDeviceIdentityState resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceImportStatus|[importedWindowsAutopilotDeviceIdentityImportStatus](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityimportstatus.md)|Device status reported by Device Directory Service(DDS). Possible values are: `unknown`, `pending`, `partial`, `complete`, `error`.|
|deviceRegistrationId|String|Device Registration ID for successfully added device reported by Device Directory Service(DDS).|
|deviceErrorCode|Int32|Device error code reported by Device Directory Service(DDS).|
|deviceErrorName|String|Device error name reported by Device Directory Service(DDS).|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.importedWindowsAutopilotDeviceIdentityState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.importedWindowsAutopilotDeviceIdentityState",
  "deviceImportStatus": "String",
  "deviceRegistrationId": "String",
  "deviceErrorCode": 1024,
  "deviceErrorName": "String"
}
```