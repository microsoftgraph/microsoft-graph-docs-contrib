---
title: "deviceLogCollectionResponseV2 resource type"
description: "Windows Log Collection request entity."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceLogCollectionResponseV2 resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Log Collection request entity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|requestId|String|The unique identifier in the form of tenantId_deviceId_requestId.|
|status|[appLogUploadState](../resources/intune-devices-apploguploadstate.md)|Indicates the status for the app log collection request if it is pending, completed or failed, Default is pending. Possible values are: `pending`, `completed`, `failed`, `unknownFutureValue`.|
|managedDeviceId|Guid|Indicates Intune device unique identifier.|
|errorCode|Int64|The error code, if any. Valid values -9.22337203685478E+18 to 9.22337203685478E+18|
|requestedDateTimeUTC|DateTimeOffset|The DateTime of the request was created.|
|completedDateTimeUTC|DateTimeOffset|The DateTime the request was completed.|
|initiatedByUserPrincipalName|String|The UPN for who initiated the request.|
|expirationDateTimeUTC|DateTimeOffset|The DateTime of the expiration of the logs.|
|size|Double|The size of the logs. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|sizeInKB|Double|The size of the logs in KB. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|enrolledByUserPrincipalName|String|The User Principal Name (UPN) of the user that enrolled the device.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceLogCollectionResponseV2"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceLogCollectionResponseV2",
  "requestId": "String",
  "status": "String",
  "managedDeviceId": "Guid",
  "errorCode": 1024,
  "requestedDateTimeUTC": "String (timestamp)",
  "completedDateTimeUTC": "String (timestamp)",
  "initiatedByUserPrincipalName": "String",
  "expirationDateTimeUTC": "String (timestamp)",
  "size": "4.2",
  "sizeInKB": "4.2",
  "enrolledByUserPrincipalName": "String"
}
```
