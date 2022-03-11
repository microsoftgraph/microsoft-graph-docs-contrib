---
title: "cloudPcSubscription complex type"
description: "Represents a CloudPC Subscription."
author: "xhan2077"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSubscription complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the subscription information that can be used to store snapshot(s) of a Cloud PC for forensic analysis.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get cloudPcSubscription](../api/cloudpcsubscription-get.md)|[cloudPcSubscription](../resources/cloudpcsubscription.md)|Read the properties and relationships of a [cloudPcSubscription](../resources/cloudpcsubscription.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|subscriptionId|String|The id of the subscription.|
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
  "subscriptionId": "String (identifier)",
  "subscriptionName": "String"
}
```

