---
title: "browseSessionBase resource type"
description: "An abstract entity that represents a browse session created on a specific restore point."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Browse Session
---

# browseSessionBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract entity that represents a browse session created on a specific restore point. A browse session can be created only for SharePoint and OneDrive for work or school. Only *fastRestore* points are supported to create a browse session. A browse session is a short-lived entity and is deleted automatically.

Base type of [oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md) and [sharePointBrowseSession](../resources/sharepointbrowsesession.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-browsesessions.md)|[browseSessionBase](../resources/browsesessionbase.md) collection|Get a list of the [browseSessionBase](../resources/browsesessionbase.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|backupSizeInBytes|String|The size of the backup in bytes.|
|createdDateTime|DateTimeOffset|The date and time when the browse session was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|error|[publicError](../resources/publicerror.md)|Contains the error details if the browse session creation fails.|
|expirationDateTime|DateTimeOffset|The date and time after which the browse session is deleted automatically.|
|id|String|The unique identifier of the browse session. Inherited from [entity](../resources/entity.md).|
|restorePointDateTime|DateTimeOffset|The date and time of the restore point on which the browse session is created.|
|status|browseSessionStatus|The status of the browse session. The possible values are: `creating`, `created`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.browseSessionBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.browseSessionBase",
  "backupSizeInBytes": "String",
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "restorePointDateTime": "String (timestamp)",
  "status": "String"
}
```

