---
title: "cloudPcSourceDeviceImage resource type"
description: "Represents the source image associated with your Azure subscription."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSourceDeviceImage resource type

Namespace: microsoft.graph

Represents the source image associated with your Azure subscription.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the source image. Read-only.|
|resourceId|String| The fully qualified unique identifier (ID) of the source image resource in Azure. The ID format is: "/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}". Read-only.|
|subscriptionDisplayName|String|The display name of the subscription that hosts the source image. Read-only.|
|subscriptionId|String|The unique identifier (ID) of the subscription that hosts the source image. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcSourceDeviceImage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSourceDeviceImage",
  "displayName": "String",
  "resourceId": "String (identifier)",
  "subscriptionDisplayName": "String",
  "subscriptionId": "String"
}
```
