---
title: "cloudPcSourceDeviceImage resource type"
description: "Represents the source image associated with your Azure subscription."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# cloudPcSourceDeviceImage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the source image associated with your Azure subscription.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the source image. Read-only.|
|resourceId|String| The fully qualified unique identifier (ID) of the source image resource in Azure. The ID format is: "/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}". Read-only.|
|subscriptionDisplayName|String|The display name of the subscription that hosts the source image. Read-only.|
|subscriptionId|String|The unique identifier (ID) of the subscription that hosts the source image. Read-only.|
|id (deprecated)|String|The unique identifier (ID) of the source image. Read-only. The **id** property is deprecated and will stop returning data on January 31, 2024. Going forward, use the **resourceId** property.|
|category|[cloudPcSourceImageCategory](#cloudpcsourceimagecategory-values)|The category of the source image. Possible values are: `managedImage`, `azureComputeGallery`, and `unknownFutureValue`. Read-only.|

### cloudPcSourceImageCategory values

|Member|Description|
|:---|:---|
|managedImage|Indicates the source image is from a managed image.|
|azureComputeGallery|Indicates the source image is from an Azure Compute Gallery.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

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
  "id": "String (identifier)",
  "resourceId": "String (identifier)",
  "subscriptionDisplayName": "String",
  "subscriptionId": "String",
  "category": "String"
}
```
