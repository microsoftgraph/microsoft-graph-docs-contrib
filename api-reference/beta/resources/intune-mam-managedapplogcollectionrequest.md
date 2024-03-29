---
title: "managedAppLogCollectionRequest resource type"
description: "The Managed App log collection response"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# managedAppLogCollectionRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Managed App log collection response

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppLogCollectionRequests](../api/intune-mam-managedapplogcollectionrequest-list.md)|[managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) collection|List properties and relationships of the [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) objects.|
|[Get managedAppLogCollectionRequest](../api/intune-mam-managedapplogcollectionrequest-get.md)|[managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md)|Read properties and relationships of the [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object.|
|[Create managedAppLogCollectionRequest](../api/intune-mam-managedapplogcollectionrequest-create.md)|[managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md)|Create a new [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object.|
|[Delete managedAppLogCollectionRequest](../api/intune-mam-managedapplogcollectionrequest-delete.md)|None|Deletes a [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md).|
|[Update managedAppLogCollectionRequest](../api/intune-mam-managedapplogcollectionrequest-update.md)|[managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md)|Update the properties of a [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the managed app log collection request. This id is assigned during request creation time. Read-only.|
|managedAppRegistrationId|String|The unique identifier of the app instance for which diagnostic logs were collected. Read-only.|
|status|String|Indicates the status for the app log collection request - pending, completed or failed. Default is pending.|
|requestedBy|String|The user principal name associated with the request for the managed application log collection. Read-only.|
|requestedByUserPrincipalName|String|The user principal name associated with the request for the managed application log collection. Read-only.|
|requestedDateTime|DateTimeOffset|DateTime of when the log upload request was received. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.|
|completedDateTime|DateTimeOffset|DateTime of when the log upload request was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.|
|userLogUploadConsent|[managedAppLogUploadConsent](../resources/intune-mam-managedapploguploadconsent.md)|Indicates whether the user associated with the device provided consent for the log collection. The user must consent before the diagnostic logs can be collected. accepted means the user consented. declined means the user declined. unknown is the default value. The Log Collection Request must be completed within 24 hours or it will be abandoned and deleted. Read-only. Possible values are: `unknown`, `declined`, `accepted`, `unknownFutureValue`.|
|uploadedLogs|[managedAppLogUpload](../resources/intune-mam-managedapplogupload.md) collection|The collection of log upload results as reported by each component on the device. Such components can be the application itself, the Mobile Application Management (MAM) SDK, and other on-device components that are requested to upload diagnostic logs. Read-only.|
|version|String|Version of the entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppLogCollectionRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppLogCollectionRequest",
  "id": "String (identifier)",
  "managedAppRegistrationId": "String",
  "status": "String",
  "requestedBy": "String",
  "requestedByUserPrincipalName": "String",
  "requestedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "userLogUploadConsent": "String",
  "uploadedLogs": [
    {
      "@odata.type": "microsoft.graph.managedAppLogUpload",
      "managedAppComponent": "String",
      "managedAppComponentDescription": "String",
      "status": "String",
      "referenceId": "String"
    }
  ],
  "version": "String"
}
```
