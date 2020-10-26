---
title: "cloudPcSourceDeviceImage resource type"
description: "Customer managed image resource"
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPcSourceDeviceImage resource type

Namespace: microsoft.graph

Customer managed image resource

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[getSourceImages](../api/cloudpcdeviceimage-getsourceimages.md)|[cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) collection|Get all managed image resources from the customer’s Azure subscriptions.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of the source image that is in customer’s Azure subscriptions |
|displayName|String|Display name of the source image |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcSourceDeviceImage",
  "baseType": "microsoft.graph.entity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSourceDeviceImage",
  "id": "String (identifier)",
  "displayName": "String"
}
```

