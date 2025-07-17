---
title: "cloudPcDeviceImage resource type"
description: "Represents the image resource on Cloud PC."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/27/2024
---

# cloudPcDeviceImage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the image resource on a Cloud PC.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|List the properties and relationships of [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) objects.|
|[Get](../api/cloudpcdeviceimage-get.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Read the properties and relationships of a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Create](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Delete](../api/cloudpcdeviceimage-delete.md)|None|Delete a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Get source images](../api/cloudpcdeviceimage-getsourceimages.md)|[cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) collection|Get [cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) objects.|
|[Reupload](../api/cloudpcdeviceimage-reupload.md)|None|Reupload a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object that failed to upload.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the associated device image. The device image display name and the version are used to uniquely identify the Cloud PC device image. Read-only.|
|errorCode|[cloudPcDeviceImageErrorCode](#cloudpcdeviceimageerrorcode-values)|The error code of the status of the image that indicates why the upload failed, if applicable. Possible values are: `internalServerError`, `sourceImageNotFound`, `osVersionNotSupported`, `sourceImageInvalid`, `sourceImageNotGeneralized`, `unknownFutureValue`, `vmAlreadyAzureAdJoined`, `paidSourceImageNotSupport`, `sourceImageNotSupportCustomizeVMName`, `sourceImageSizeExceedsLimitation`, `sourceImageWithDataDiskNotSupported`, `sourceImageWithDiskEncryptionSetNotSupported`, `sourceImageWithAzureDiskEncryptionNotSupported`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `vmAlreadyAzureAdJoined`, `paidSourceImageNotSupport`, `sourceImageNotSupportCustomizeVMName`, `sourceImageSizeExceedsLimitation`, `sourceImageWithDataDiskNotSupported`, `sourceImageWithDiskEncryptionSetNotSupported`, `sourceImageWithAzureDiskEncryptionNotSupported`. Read-only.|
|expirationDate|Date|The date when the image became unavailable. Read-only.|
|id|String|The unique identifier (ID) of the image resource on the Cloud PC. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The data and time when the image was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|operatingSystem|String|The operating system of the image. For example, `Windows 10 Enterprise`. Read-only.|
|osBuildNumber|String|The OS build version of the image. For example, `1909`. Read-only.|
|osStatus|[cloudPcDeviceImageOsStatus](#cloudpcdeviceimageosstatus-values)|The OS status of this image. Possible values are: `supported`, `supportedWithWarning`, `unknown`, `unknownFutureValue`. The default value is `unknown`. Read-only.|
|osVersionNumber|String|The operating system version of this image. For example, `10.0.22000.296`. Read-only.|
|sizeInGB|Int32|The size of the image in GB. For example, `64`. Read-only.|
|sourceImageResourceId|String|The unique identifier (ID) of the source image resource on Azure. The required ID format is: "/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}". Read-only.|
|status|[cloudPcDeviceImageStatus](#cloudpcdeviceimagestatus-values)|The status of the image on the Cloud PC. Possible values are: `pending`, `ready`, `warning`, `failed`, `unknownFutureValue`. Read-only.|
|version|String|The image version. For example, `0.0.1` and `1.5.13`. Read-only.|
|statusDetails (deprecated)|[cloudPcDeviceImageStatusDetails](#cloudpcdeviceimagestatusdetails-values)|The details of the status of the image that indicates why the upload failed, if applicable. Possible values are: `internalServerError`, `sourceImageNotFound`, `osVersionNotSupported`, `sourceImageInvalid`, `sourceImageNotGeneralized`, `unknownFutureValue`, `vmAlreadyAzureAdJoined`, `paidSourceImageNotSupport`, `sourceImageNotSupportCustomizeVMName`, `sourceImageSizeExceedsLimitation`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `vmAlreadyAzureAdJoined`, `paidSourceImageNotSupport`, `sourceImageNotSupportCustomizeVMName`, `sourceImageSizeExceedsLimitation`. Read-only. The **statusDetails** property is deprecated and will stop returning data on January 31, 2024. Going forward, use the **errorCode** property.|

### cloudPcDeviceImageErrorCode values

|Member|Description|
|:---|:---|
|internalServerError|An internal server error occurred during the processing of the image.|
|sourceImageNotFound|The source image is inaccessible or not found.|
|osVersionNotSupported|The OS version isn't supported.|
|sourceImageInvalid|The source image is invalid for provisioning a Windows virtual machine (VM).|
|sourceImageNotGeneralized|The uploaded image isn't generalized. Reupload the image after running the sysprep/generalize command. To learn more, see [Remove machine specific information by deprovisioning or generalizing a VM before creating an image](/azure/virtual-machines/generalize).|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|vmAlreadyAzureAdJoined|The VM that generates a source image for creating a device image has already been joined to Microsoft Entra. This prevents the validation process from allowing the creation of a device image using such a source image.|
|paidSourceImageNotSupport|This source image is built from another paid image from the Azure Marketplace and isn't supported; use another source to proceed.|
|sourceImageNotSupportCustomizeVMName|A computer name setting issue exists on the resultant generalized image, which prevents the customization of the VM name with the provided image.|
|sourceImageSizeExceedsLimitation|The size of the customer-uploaded source image exceeds the shared image gallery (SIG) limitations, which results in image creation failure.|
|sourceImageWithDataDiskNotSupported|Indicates the error code where the source image has an associated data disk attached. Setting up a provisioning policy with this configuration is not supported with W365 Frontline.|
|sourceImageWithDiskEncryptionSetNotSupported|Indicates that the uploaded image uses a disk encryption set with a customer-managed key, which is not supported in Windows 365. Upload a new image encrypted with a platform-managed key.|
|sourceImageWithAzureDiskEncryptionNotSupported|Indicates that the uploaded image was captured from an Azure virtual machine that had Azure disk encryption enabled, which is not supported in Windows 365. Upload a new image captured from a VM encrypted only with a platform-managed key.|

### cloudPcDeviceImageOsStatus values

|Member|Description|
|:---|:---|
|supported|Indicates the Cloud PC device image operating system is active and ready to be used for provisioning.|
|supportedWithWarning|Indicates that the Cloud PC device image operating system is expired, but Cloud PC continues to support. If users continue to use it, they may not be able to get security updates.|
|unknown|Default. Indicates that the status of the operating system image for the Cloud PC device is unknown.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcDeviceImageStatus values

|Member|Description|
|:---|:---|
|pending|The image upload is in progress.|
|ready|The image is ready for use on Cloud PCs.|
|warning| Indicates the Cloud PC image uploaded may not be provisioned in certain scenarios. For details, see the error message.|
|failed|Indicates that the image failed to upload. |
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcDeviceImageStatusDetails values

|Member|Description|
|:---|:---|
|internalServerError|An internal server error occurred during the processing of the image.|
|sourceImageNotFound|The source image is inaccessible or not found.|
|osVersionNotSupported|The OS version isn't supported.|
|sourceImageInvalid|The source image is invalid for provisioning a Windows virtual machine (VM).|
|sourceImageNotGeneralized|The uploaded image isn’t generalized. Reupload the image after running the sysprep/generalize command. To learn more, see [Remove machine specific information by deprovisioning or generalizing a VM before creating an image](/azure/virtual-machines/generalize).|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|vmAlreadyAzureAdJoined|The VM that generates a source image for creating a device image that joined Microsoft Entra. It prevents the validation process from allowing the creation of a device image using such a source image.|
|paidSourceImageNotSupport|This source image is built from another paid image from the Azure Marketplace and isn't supported; use another source to proceed.|
|sourceImageNotSupportCustomizeVMName|A computer name setting issue exists on the resultant generalized image, which prevents the customization of the VM name with the provided image.|
|sourceImageSizeExceedsLimitation|The size of the customer-uploaded source image exceeds the shared image gallery (SIG) limitations, which results in image creation failure.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "errorCode": "String",
  "expirationDate": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "operatingSystem": "String",
  "osBuildNumber": "String",
  "osStatus": "String",
  "osVersionNumber": "String",
  "sizeInGB": "Int32",
  "sourceImageResourceId": "String",
  "status": "String",
  "statusDetails": "String",
  "version": "String"
}
```
