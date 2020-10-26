---
title: "cloudPcDeviceImage resource type"
description: "The cloudPCDeviceImage used for provision CloudPC."
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPcDeviceImage resource type

Namespace: microsoft.graph

The cloudPCDeviceImage used for provision CloudPC.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcDeviceImages](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|Get the cloudPcDeviceImage resources from the cloudPcDeviceImages navigation property.|
|[Create cloudPcDeviceImages](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new cloudPcDeviceImage object.|
|[Get cloudPcDeviceImages](../api/virtualendpoint-get-cloudpcdeviceimage.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Read the properties and relationships of a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Delete cloudPcDeviceImages](../api/virtualendpoint-delete-deviceimages.md)|None|Delete a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the image resource in Cloud PC. This property is read-only.|
|sourceImageResourceId|String|Id of the source image resource on Azure. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}”|
|displayName|String|The image's display name|
|version|String|The image version, e.g. 0.0.1, 1.5.13|
|osBuildNumber|String|The image's OS build version, e.g. 1909|
|operatingSystem|String|The image's operating system, e.g. Windows 10 Enterprise.|
|lastModifiedDateTime|DateTimeOffset|The images's last modified date and time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. time|
|status|[cloudPcDeviceImageStatus](../resources/cloudpcdeviceimagestatus.md)|The image's status. It can be upload pending, failed to upload, or ready to use. Possible values are: `pending`, `ready`, `failed`.|
|statusDetails|[cloudPcDeviceImageStatusDetails](../resources/cloudpcdeviceimagestatusdetails.md)|The image's status details. It indicates the reason the upload failed. Possible values are: `internalServerError`, `sourceImageNotFound`.|

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
