---
title: "oneDriveForBusinessBrowseSession resource type"
description: "Represents a browse session created on a restore point of a OneDrive"
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# oneDriveForBusinessBrowseSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a browse session created on a restore point of a backed-up OneDrive.

Inherits from [browseSessionBase](../resources/browsesessionbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-onedriveforbusinessbrowsesessions.md)|[oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md)|Create a new oneDriveForBusinessBrowseSession object.|
|[Get](../api/onedriveforbusinessbrowsesession-get.md)|[oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md)|Read the properties and relationships of [oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md) object.|
|[List](../api/backuprestoreroot-list-onedriveforbusinessbrowsesessions.md)|[oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md) collection|Get a list of the oneDriveForBusinessBrowseSession objects and their properties.|
|[browse](../api/onedriveforbusinessbrowsesession-browse.md)|[browseQueryResponseItem](../resources/browsequeryresponseitem.md) collection|Allow client to browse files and folder present within a [BrowseSession](../resources/browsesessionbase.md)|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|backupSizeInBytes|String|The size of the backup in bytes.|
|createdDateTime|DateTimeOffset|The time of the creation of the browse session.|
|error|[publicError](../resources/publicerror.md)|Contains the error details if the browse session creation fails.|
|expirationDateTime|DateTimeOffset|The time after which the browse session is deleted automatically.|
|id|String|The unique identifier of the browse session. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|restorePointDateTime|DateTimeOffset|The date time of the restore point on which browse session is created.|
|status|browseSessionStatus|The status of the browse session. The possible values are: `creating`, `created`, `failed`, `unknownFutureValue`.|
|directoryObjectId|String|Id of the backed-up OneDrive.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.oneDriveForBusinessBrowseSession",
  "baseType": "microsoft.graph.browseSessionBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oneDriveForBusinessBrowseSession",
  "id": "String (identifier)",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "restorePointDateTime": "String (timestamp)",
  "backupSizeInBytes": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "directoryObjectId": "String"
}
```

