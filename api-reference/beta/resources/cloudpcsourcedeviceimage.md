---
title: "cloudPcSourceDeviceImage resource type"
description: "The source image associated with your Azure subscription. "
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSourceDeviceImage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The source image associated with your Azure subscription.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier (ID) of the source image. (Starting from January 31, 2024, this property will no longer be supported and will be marked as deprecated. Use resourceId instead.)|
|resourceId|String| The fully qualified resource Unique Identifier (ID) of the source image in Azure. The format is "/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}". Read-Only.|
|displayName|String|The display name for the source image. Read-Only.|
|subscriptionId|String|The unique identifier (ID) of subscription that hosts the source image. Read-Only.|
|subscriptionDisplayName|String|The display name of subscription that hosts the source image. Read-Only.|

## Relationships

None.

## JSON representation

The following content is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcSourceDeviceImage"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSourceDeviceImage",
  "id": "String (identifier)",
  "resourceId": "String",
  "displayName": "String",
  "subscriptionId": "String",
  "subscriptionDisplayName": "String"
}
```
