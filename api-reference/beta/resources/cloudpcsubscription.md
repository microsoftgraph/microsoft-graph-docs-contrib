---
title: "cloudPcSubscription resource type"
description: "Represents a Cloud PC subscription."
author: "xhan2077"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# cloudPcSubscription resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the subscription information that can be used to store a snapshot or snapshots of a Cloud PC for forensic analysis.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|subscriptionId|String|Indicates the ID of the subscription.|
|subscriptionName|String|Indicates the name of the subscription.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "subscriptionId",
  "@odata.type": "microsoft.graph.cloudPcSubscription",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSubscription",
  "subscriptionId": "String",
  "subscriptionName": "String"
}
```
