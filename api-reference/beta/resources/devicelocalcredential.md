---
title: "deviceLocalCredential resource type"
description: "Represents the local administrator account credential of a device object in Microsoft Entra ID that is enabled with Local Admin Password Solution (LAPS). Includes the actual password for the local administrator account returned as Base64 encoded value."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# deviceLocalCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the local administrator account credential of a device object in Microsoft Entra ID that is enabled with Local Admin Password Solution (LAPS). Includes the actual password for the local administrator account returned as Base64 encoded value.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountName|String| The name of the local admin account for which LAPS is enabled.|
|accountSid|String|The SID of the local admin account for which LAPS is enabled.|
|backupDateTime|DateTimeOffset|When the local adminstrator account credential for the device object was backed up to Microsoft Entra ID.|
|passwordBase64|String|The password for the local administrator account that is backed up to Microsoft Entra ID and returned as a base 64 encoded value.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceLocalCredential",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceLocalCredential",
  "accountName": "String",
  "accountSid": "String",
  "backupDateTime": "DateTimeOffset",
  "passwordBase64": "String"
}
```
