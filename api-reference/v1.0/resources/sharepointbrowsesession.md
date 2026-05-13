---
title: "sharePointBrowseSession resource type"
description: "Represents a browse session created on a restore point of a SharePoint site."
author: "rahulprasad-ms"
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# sharePointBrowseSession resource type

Namespace: microsoft.graph

Represents a browse session created on a restore point of a backed-up SharePoint site.

Inherits from [browseSessionBase](../resources/browsesessionbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-sharepointbrowsesessions.md)|[sharePointBrowseSession](../resources/sharepointbrowsesession.md)|Create a new sharePointBrowseSession object.|
|[Get](../api/sharepointbrowsesession-get.md)|[sharePointBrowseSession](../resources/sharepointbrowsesession.md)|Read the properties and relationships of [sharePointBrowseSession](../resources/sharepointbrowsesession.md) object.|
|[List](../api/backuprestoreroot-list-sharepointbrowsesessions.md)|[sharePointBrowseSession](../resources/sharepointbrowsesession.md) collection|Get a list of the sharePointBrowseSession objects and their properties.|
|[browse](../api/sharepointbrowsesession-browse.md)|[browseQueryResponseItem](../resources/browsequeryresponseitem.md) collection|Allow client to browse files and folder present within a [BrowseSession](../resources/browsesessionbase.md)|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|backupSizeInBytes|String|The size of the backup in bytes.|
|createdDateTime|DateTimeOffset|The time of the creation of the browse session.|
|error|[publicError](../resources/publicerror.md)|Contains the error details if the browse session creation fails.|
|expirationDateTime|DateTimeOffset|The time after which the browse session is deleted automatically.|
|id|String|The unique identifier of the browse session. Inherits from [entity](../resources/entity.md).|
|restorePointDateTime|DateTimeOffset|The date time of the restore point on which browse session is created.|
|siteId|String|Id of the backed-up SharePoint site.|
|status|browseSessionStatus|The status of the browse session. The possible values are: `creating`, `created`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointBrowseSession",
  "baseType": "microsoft.graph.browseSessionBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointBrowseSession",
  "id": "String (identifier)",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "restorePointDateTime": "String (timestamp)",
  "backupSizeInBytes": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "siteId": "String"
}
```

