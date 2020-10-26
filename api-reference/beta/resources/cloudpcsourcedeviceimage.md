---
title: "cloudPcSourceDeviceImage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
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
  "@odata.type": "microsoft.graph.cloudPcSourceDeviceImage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSourceDeviceImage",
  "id": "String (identifier)",
  "displayName": "String"
}
```

