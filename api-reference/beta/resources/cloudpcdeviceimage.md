---
title: "cloudPcDeviceImage resource type"
description: "Represents the image resource on Cloud PC."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDeviceImage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the image resource on a Cloud PC.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List deviceImages](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|List the properties and relationships of [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) objects.|
|[Get cloudPcDeviceImage](../api/cloudpcdeviceimage-get.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Read the properties and relationships of a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Create cloudPcDeviceImage](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Delete cloudPcDeviceImage](../api/cloudpcdeviceimage-delete.md)|None|Delete a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[getSourceImages](../api/cloudpcdeviceimage-getsourceimages.md)|[cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) collection|Get [cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) objects.|
|[Reupload cloudPcDeviceImage](../api/cloudpcdeviceimage-reupload.md)|None|Reupload a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object that failed to upload.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the image.|
|expirationDate|Date|The date the image became unavailable.|
|id|String|Unique identifier for the image resource on the Cloud PC. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The data and time that the image was last modified. The time is shown in ISO 8601 format and  Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 appears as `2014-01-01T00:00:00Z`.|
|operatingSystem|String|The operating system of the image. For example, `Windows 10 Enterprise`.|
|osBuildNumber|String|The OS build version of the image. For example, `1909`.|
|osStatus|[cloudPcDeviceImageOsStatus](#cloudpcdeviceimageosstatus-values)|The OS status of this image. Possible values are: `supported`, `supportedWithWarning`, `unknownFutureValue`.|
|sourceImageResourceId|String|The ID of the source image resource on Azure. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}`.|
|status|[cloudPcDeviceImageStatus](#cloudpcdeviceimagestatus-values)|The status of the image on Cloud PC. Possible values are: `pending`, `ready`, `failed`.|
|statusDetails|cloudPcDeviceImageStatusDetails|The details of the status of the image that indicates why the upload failed, if applicable. Possible values are: `internalServerError`, `sourceImageNotFound`, `osVersionNotSupported`, `sourceImageInvalid`, and `sourceImageNotGeneralized`.|
|version|String|The image version. For example, `0.0.1` and `1.5.13`.|

### cloudPcDeviceImageStatus values

|Member|Description|
|:---|:---|
|pending|The image upload is in progress.|
|ready|The image is ready for use on Cloud PCs.|
|failed|The image couldn’t be uploaded. |

### cloudPcDeviceImageStatusDetails values

|Member|Description|
|:---|:---|
|internalServerError|There was an internal server error while processing the image.|
|sourceImageNotFound|Source image is inaccessible or not found.|
|osVersionNotSupported| OS version is not supported.|
|sourceImageInvalid|The source image is not valid for provisioning a Windows VM with it.|
|sourceImageNotGeneralized|The uploaded image hasn’t been generalized. Reupload the image after running the sysprep/generalize command. To learn more, see [Remove machine specific information by generalizing a VM before creating an image](/azure/virtual-machines/generalize).|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcDeviceImageOsStatus values

|Member|Description|
|:---|:---|
|supported|The device image is active and ready to be used for provisioning.|
|supportedWithWarning|The device image has expired, but Cloud PC will continue support. If users continue to use, they may not be able to get security updates.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcDeviceImage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDeviceImage",
  "displayName": "String",
  "expirationDate": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "operatingSystem": "String",
  "osBuildNumber": "String",
  "osStatus": "String",
  "sourceImageResourceId": "String",
  "status": "String",
  "statusDetails": "String",
  "version": "String"
}
```
