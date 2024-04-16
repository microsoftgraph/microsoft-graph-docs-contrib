---
title: "cloudPcGalleryImage resource type"
description: "Represents the gallery image resource of the current organization that can be used to provision a Cloud PC."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcGalleryImage resource type

Namespace: microsoft.graph

Represents the gallery image resource of the current organization that can be used to provision a Cloud PC.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List galleryImages](../api/virtualendpoint-list-galleryimages.md)|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) collection|List the properties and relationships of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects.|
|[Get cloudPcGalleryImage](../api/cloudpcgalleryimage-get.md)|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md)|Read the properties and relationships of a specific [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of this gallery image. For example, `Windows 11 Enterprise + Microsoft 365 Apps 22H2`. Read-only.|
|endDate|Date|The date when the status of the image becomes `supportedWithWarning`. Users can still provision new Cloud PCs if the current time is later than **endDate** and earlier than **expirationDate**. For example, assume the **endDate** of a gallery image is `2023-9-14` and **expirationDate** is `2024-3-14`, users are able to provision new Cloud PCs if today is 2023-10-01. Read-only.|
|expirationDate|Date|The date when the image is no longer available. Users are unable to provision new Cloud PCs if the current time is later than **expirationDate**. The value is usually **endDate** plus six months. For example, if the **startDate** is `2025-10-14`, the **expirationDate** is usually `2026-04-14`. Read-only.|
|id|String|The unique identifier (ID) of the gallery image resource on Cloud PC. The ID format is {publisherName_offerName_skuName}. For example, `MicrosoftWindowsDesktop_windows-ent-cpc_win11-22h2-ent-cpc-m365`. You can find the **publisherName**, **offerName**, and **skuName** in the Azure Marketplace. Inherited from [entity](../resources/entity.md). Read-only.|
|offerName|String|The offer name of this gallery image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.|
|publisherName|String|The publisher name of this gallery image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.|
|sizeInGB|Int32|Indicates the size of this image in gigabytes. For example, `64`. Read-only.|
|skuName|String|The SKU name of this image that is passed to Azure Resource Manager (ARM) to retrieve the image resource. Read-only.|
|startDate|Date| The date when the Cloud PC image is available for provisioning new Cloud PCs. For example, `2022-09-20`. Read-only.|
|status|[cloudPcGalleryImageStatus](#cloudpcgalleryimagestatus-values)|The status of the gallery image on the Cloud PC. Possible values are: `supported`, `supportedWithWarning`, `notSupported`, `unknownFutureValue`. The default value is `supported`. Read-only.|

### cloudPcGalleryImageStatus values

|Member|Description|
|:---|:---|
|supported|Indicates that the gallery image is active and ready to be used for provisioning.|
|supportedWithWarning|Indicates that the gallery image has expired, but the Cloud PC continues support for six months, after which it becomes unsupported and can't be used.|
|notSupported|Indicates that the gallery image is out of support. |
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcGalleryImage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcGalleryImage",
  "displayName": "String",
  "endDate": "String (Date)",
  "expirationDate": "String (Date)",
  "id": "String (identifier)",
  "offerName": "String",
  "publisherName": "String",
  "sizeInGB": "Int32",
  "skuName": "String",
  "startDate": "String (Date)",
  "status": "String"
}
```
