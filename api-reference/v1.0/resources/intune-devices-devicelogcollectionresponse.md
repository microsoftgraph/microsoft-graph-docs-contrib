---
title: "deviceLogCollectionResponse resource type"
description: "Windows Log Collection request entity."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# deviceLogCollectionResponse resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Log Collection request entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceLogCollectionResponses](../api/intune-devices-devicelogcollectionresponse-list.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) collection|List properties and relationships of the [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) objects.|
|[Get deviceLogCollectionResponse](../api/intune-devices-devicelogcollectionresponse-get.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md)|Read properties and relationships of the [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) object.|
|[Create deviceLogCollectionResponse](../api/intune-devices-devicelogcollectionresponse-create.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md)|Create a new [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) object.|
|[Delete deviceLogCollectionResponse](../api/intune-devices-devicelogcollectionresponse-delete.md)|None|Deletes a [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md).|
|[Update deviceLogCollectionResponse](../api/intune-devices-devicelogcollectionresponse-update.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md)|Update the properties of a [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) object.|
|[createDownloadUrl action](../api/intune-devices-devicelogcollectionresponse-createdownloadurl.md)|String|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier in the form of tenantId_deviceId_requestId.|
|status|[appLogUploadState](../resources/intune-devices-apploguploadstate.md)|Indicates the status for the app log collection request if it is pending, completed or failed, Default is pending. Possible values are: `pending`, `completed`, `failed`, `unknownFutureValue`.|
|managedDeviceId|Guid|Indicates Intune device unique identifier.|
|requestedDateTimeUTC|DateTimeOffset|The DateTime of the request.|
|receivedDateTimeUTC|DateTimeOffset|The DateTime the request was received.|
|initiatedByUserPrincipalName|String|The UPN for who initiated the request.|
|expirationDateTimeUTC|DateTimeOffset|The DateTime of the expiration of the logs.|
|sizeInKB|Double|The size of the logs in KB. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|enrolledByUser|String|The User Principal Name (UPN) of the user that enrolled the device.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceLogCollectionResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceLogCollectionResponse",
  "id": "String (identifier)",
  "status": "String",
  "managedDeviceId": "Guid",
  "requestedDateTimeUTC": "String (timestamp)",
  "receivedDateTimeUTC": "String (timestamp)",
  "initiatedByUserPrincipalName": "String",
  "expirationDateTimeUTC": "String (timestamp)",
  "sizeInKB": "4.2",
  "enrolledByUser": "String"
}
```
