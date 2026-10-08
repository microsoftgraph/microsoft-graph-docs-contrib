---
title: "cloudPcConfiguration resource type"
description: "Represents the Cloud PC specification, including image and operating system locale settings for provisioning."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC specification, including image and operating system locale settings for provisioning.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|imageDisplayName|String|The display name of the image. Read-only.|
|imageId|String|The unique identifier of the operating system image used for provisioning new Cloud PCs. The format for a gallery type image is: `{publisherName_offerName_skuName}`.|
|imageType|cloudPcProvisioningPolicyImageType|The type of operating system image (custom or gallery) used for provisioning on Cloud PCs. The possible values are: `gallery`, `custom`, `unknownFutureValue`. The default value is `gallery`.|
|osLocale|String|The operating system locale for the Cloud PC.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcConfiguration"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcConfiguration",
  "imageDisplayName": "String",
  "imageId": "String",
  "imageType": "String",
  "osLocale": "String"
}
```
