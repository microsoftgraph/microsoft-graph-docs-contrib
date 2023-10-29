---
title: "Global Secure Access device resource type"
description: "Unique Microsoft Entra ID device identified by Global Secure Access."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# device resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unique Microsoft Entra ID device identified by Global Secure Access.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|Unique Id.|
|displayName|String|display Name.|
|isCompliant|Boolean|is device Compliant.|
|lastAccessDateTime|DateTimeOffset|last Access DateTime.|
|operatingSystem|String|operating System|
|trafficType|microsoft.graph.networkaccess.trafficType|traffic classification.The possible values are: `internet`, `private`, `microsoft365`, `all`.|

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

