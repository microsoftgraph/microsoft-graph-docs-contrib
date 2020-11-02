---
title: "cloudPcDeviceImage resource type"
description: "Device image management lets you upload a custom OS image (a managed image resource on Azure) on Cloud PCs."
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPcDeviceImage resource type

Namespace: microsoft.graph

Device image management lets you upload a custom OS image (a managed image resource on Azure) on Cloud PCs.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcDeviceImages](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|Get the cloudPcDeviceImage resources from the cloudPcDeviceImages navigation property.|
|[Get cloudPcDeviceImages](../api/virtualendpoint-get-cloudpcdeviceimage.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Read the properties and relationships of a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Create cloudPcDeviceImages](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new cloudPcDeviceImage object.|
|[Delete cloudPcDeviceImages](../api/virtualendpoint-delete-deviceimages.md)|None|Delete a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[getSourceImages](../api/cloudpcdeviceimage-getsourceimages.md)|[cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) collection|Get all managed image resources from the customer's Azure subscriptions.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the image resource on Cloud PC.This property is read-only.|
|sourceImageResourceId|String|The ID of the source image resource on Azure. Required format: "/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}".|
|displayName|String|The image's display name.|
|version|String|The image version. For example: 0.0.1, 1.5.13.|
|osBuildNumber|String|The image's OS build version. For example: 1909.|
|operatingSystem|String|The image's operating system. For example: Windows 10 Enterprise.|
|lastModifiedDateTime|DateTimeOffset|The data and time that the image was last modified. The time is shown in ISO 8601 format and  Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|status|[cloudPcDeviceImageStatus](../resources/cloudpcdeviceimagestatus.md)|The status of the image on Cloud PC. Possible status include upload pending, failed to upload, or ready to use. Possible values are: `pending`, `ready`, `failed`.|
|statusDetails|[cloudPcDeviceImageStatusDetails](../resources/cloudpcdeviceimagestatusdetails.md)|The details of the image's status, which indicates why the upload failed, if applicable. Possible values are: `internalServerError`, `sourceImageNotFound`.|

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
  "id": "String (identifier)",
  "displayName": "String",
  "operatingSystem": "String",
  "osBuildNumber": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "statusDetails": "String",
  "sourceImageResourceId": "String"
}
```
