---
title: "appLogCollectionRequest resource type"
description: "Entity for AppLogCollectionRequest contains all logs values."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# appLogCollectionRequest resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity for AppLogCollectionRequest contains all logs values.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List appLogCollectionRequests](../api/intune-devices-applogcollectionrequest-list.md)|[appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md) collection|List properties and relationships of the [appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md) objects.|
|[Get appLogCollectionRequest](../api/intune-devices-applogcollectionrequest-get.md)|[appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md)|Read properties and relationships of the [appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md) object.|
|[Create appLogCollectionRequest](../api/intune-devices-applogcollectionrequest-create.md)|[appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md)|Create a new [appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md) object.|
|[Delete appLogCollectionRequest](../api/intune-devices-applogcollectionrequest-delete.md)|None|Deletes a [appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md).|
|[Update appLogCollectionRequest](../api/intune-devices-applogcollectionrequest-update.md)|[appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md)|Update the properties of a [appLogCollectionRequest](../resources/intune-devices-applogcollectionrequest.md) object.|
|[createDownloadUrl action](../api/intune-devices-applogcollectionrequest-createdownloadurl.md)|[appLogCollectionDownloadDetails](../resources/intune-devices-applogcollectiondownloaddetails.md)|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique Identifier. This is userId_DeviceId_AppId id.|
|status|[appLogUploadState](../resources/intune-devices-apploguploadstate.md)|Indicates the status for the app log collection request if it is pending, completed or failed, Default is pending. Possible values are: `pending`, `completed`, `failed`, `unknownFutureValue`.|
|errorMessage|String|Indicates error message if any during the upload process.|
|customLogFolders|String collection|List of log folders.|
|completedDateTime|DateTimeOffset|Time at which the upload log request reached a completed state if not completed yet NULL will be returned.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appLogCollectionRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appLogCollectionRequest",
  "id": "String (identifier)",
  "status": "String",
  "errorMessage": "String",
  "customLogFolders": [
    "String"
  ],
  "completedDateTime": "String (timestamp)"
}
```
