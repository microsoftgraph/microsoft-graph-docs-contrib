---
title: "cloudPcSubscription resource type"
description: "Represents a Cloud PC subscription."
author: "xhan2077"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSubscription resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the subscription information that can be used to store a snapshot or snapshots of a Cloud PC for forensic analysis.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|subscriptionId|String|The ID of the subscription.|
|subscriptionName|String|The name of the subscription.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
