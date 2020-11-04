---
title: "cloudPcSourceDeviceImage resource type"
description: "The source image associated with your Azure subscription. "
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPcSourceDeviceImage resource type

Namespace: microsoft.graph

The source image associated with your Azure subscription.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get cloudPcSourceDeviceImage](../api/cloudpcdeviceimage-getsourceimages.md)|[cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) collection|Get all managed image resources from the customer's Azure subscriptions.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the source image.|
|displayName|String|The display name for the source image.|

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
