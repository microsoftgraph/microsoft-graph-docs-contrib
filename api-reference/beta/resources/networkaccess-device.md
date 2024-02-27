---
title: "Global Secure Access device resource type"
description: "Unique Microsoft Entra ID device identified by Global Secure Access."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# device resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unique Microsoft Entra ID device identified by Global Secure Access.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|A unique device ID.|
|displayName|String|The display name for the device.|
|isCompliant|Boolean|A value that indicates whether or not the device is compliant.|
|lastAccessDateTime|DateTimeOffset|The most recent access time for the device.|
|operatingSystem|String|The operating system on the device.|
|trafficType|microsoft.graph.networkaccess.trafficType|The traffic classification. The possible values are: `internet`, `private`, `microsoft365`, or `all`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.device"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.device",
  "displayName": "String",
  "deviceId": "String",
  "operatingSystem": "String",
  "isCompliant": "Boolean",
  "trafficType": "String",
  "lastAccessDateTime": "String (timestamp)"
}
```

