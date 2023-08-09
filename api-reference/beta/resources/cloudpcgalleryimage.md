---
title: "cloudPcGalleryImage resource type"
description: "Represents the gallery image resource of the current organization that can be used to provision a Cloud PC."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcGalleryImage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the gallery image resource of the current organization that can be used to provision a Cloud PC.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List galleryImages](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcgalleryimage.md) collection|List the properties and relationships of [cloudPcDeviceImage](../resources/cloudpcgalleryimage.md) objects.|
|[Get cloudPcGalleryImage](../api/cloudpcgalleryimage-get.md)|[cloudPcDeviceImage](../resources/cloudpcgalleryimage.md)|Read the properties and relationships of a [cloudPcDeviceImage](../resources/cloudpcgalleryimage.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The official display name of the gallery image. Read-only.|
|endDate|Date|The date in which this image is no longer within long-term support. The Cloud PC continues to provide short-term support. Read-only.|
|expirationDate|Date|The date when the image is no longer available. Read-only.|
|id|String|Unique identifier for the gallery image resource on the Cloud PC. Read-only.|
|offer|String|The offer name of the gallery image. This value is passed to Azure to get the image resource. Read-only.|
|offerDisplayName|String|The official display offer name of the gallery image. For example, `Windows 10 Enterprise + OS Optimizations`. Read-only.|
|publisher|String|The publisher name of the gallery image. This value is passed to Azure to get the image resource. Read-only.|
|recommendedSku|String|Recommended Cloud PC SKU for this gallery image. Read-only.|
|sizeInGB|Int32|The size of this image in gigabytes. Read-only.|
|sku|String|The SKU name of the gallery image. This value is passed to Azure to get the image resource. Read-only.|
|skuDisplayName|String|The official display stock keeping unit (SKU) name of this gallery image. For example, `2004`. Read-only.|
|startDate|Date|The date when the image becomes available. Read-only.|
|status|cloudPcGalleryImageStatus|The status of the gallery image on the Cloud PC. Possible values are: `supported`, `supportedWithWarning`, `notSupported`, `unknownFutureValue`. Read-only.|

### cloudPcGalleryImageStatus values

|Member|Description|
|:---|:---|
|supported|The gallery image is active and ready to be used for provisioning.|
|supportedWithWarning|The gallery image has expired, but the Cloud PC will continue support for 6 months, after which it will be unsupported and cannot be used.|
|notSupported|The gallery image is out of support. |
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
  "@odata.type": "#microsoft.graph.cloudPcDeviceImage",
  "displayName": "String",
  "endDate": "String (Date)",
  "expiredDate": "String (Date)",
  "id": "String (identifier)",
  "offer": "String",
  "offerDisplayName": "String",
  "publisher": "String",
  "recommendedSku": "String",
  "sizeInGB": "Int32",
  "sku": "String",
  "skuDisplayName": "String",
  "startDate": "String (Date)",
  "status": "String"
}
```
