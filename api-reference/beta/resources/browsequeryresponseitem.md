---
title: "browseQueryResponseItem resource type"
description: "Represents the response of the sharepointBrowseSession and oneDriveForBusinessBrowse APIs."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# browseQueryResponseItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the response of the [sharepointBrowseSession](../api/sharepointbrowsesession-browse.md) and [oneDriveForBusinessBrowse](../api/onedriveforbusinessbrowsesession-browse.md) APIs.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the user or application that created the item. Returned only when **type** is `file` or `folder`.|
|createdDateTime|DateTimeOffset|The date and time when the item was created. Returned only when **type** is `file` or `folder`. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. |
|itemKey|String|Unique identifier of the returned item.|
|itemsCount|Int32|The count of items present within the items; for example, the count of files in a folder.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the user or application that last modified the item. Returned only when **type** is `file` or `folder`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the item was last modified. Returned only when **type** is `file` or `folder`. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. |
|name|String|The name of the item.|
|sizeInBytes|String|The size of the item in bytes.|
|type|browseQueryResponseItemType|The type of the item. The possible values are: `none`, `site`, `documentLibrary`, `folder`, `file`, `unknownFutureValue`.|
|webUrl|String|The web URL of the item.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.browseQueryResponseItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.browseQueryResponseItem",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "itemKey": "String",
  "itemsCount": "Int32",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "sizeInBytes": "String",
  "type": "String",
  "webUrl": "String"
}
```

