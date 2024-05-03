---
title: "Restore Point"
description: "Describes Restore Point and it's properties"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: backup-and-restore
author: "tkanaujia, maniksingh"
---

# restorePoint resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

RestorePoints represent the timestamp when an artifact is protected [](../resources/protectionpolicy.md).

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|protectionDateTime|DateTimeOffset|Date time when restore point was created.|
|expirationDateTime|DateTimeTimeZone|Expiration date time of the restore point.|
|tags|[restorePointTags](../resources/restorepoint.md#restorePointTags-values)|Specifies the preference of of restore points.|

### restorePointTags values
|Member | Description |
|:------|:------------|
|none   | No Tag      |
|fastRestore | Tag to fast restore the restore point|
|unknownFutureValue | Marker value for future compatibility|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.restorePoint"
}-->

```json
{
  "protectionDateTime": "dateTimeOffset",
  "expirationDateTime": "dateTimeTimeZone",
  "tags": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "restorePoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


