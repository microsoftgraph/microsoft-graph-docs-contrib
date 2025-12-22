---
title: "riskUserActivity resource type"
description: "riskUserActivity detections"
author: "tracyshi"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/15/2024
---

# riskUserActivity resource type

Namespace: microsoft.graph

Represents the risk activities of a Microsoft Entra user as determined by Microsoft Entra ID Protection.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detail|[riskDetail](../resources/riskdetail.md)|For more information, see [riskDetail](../resources/riskdetail.md).|
|riskEventTypes|String collection|The type of risk event detected.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.riskUserActivity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskUserActivity",
  "riskEventTypes": [
    "String"
  ],
  "detail": "String"
}
```
