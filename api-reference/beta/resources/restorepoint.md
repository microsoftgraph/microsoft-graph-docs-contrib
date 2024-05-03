---
title: "Restore Point"
description: "Describes Restore Point and it's properties"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: backup-and-restore
author: "tkanaujia, maniksingh"
---

# process resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

RestorePoints represent the timestamp when an artifact is protected (as per /graph/api/resource/protectionpolicy).

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|protectionDateTime|DateTimeOffset|Date time when restore point was created.|
|expirationDateTime|DateTimeTimeZone|Expiration date time of the restore point.|
|tags|RestorePointTags|Specifies the preference of of restore points|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.restorepoint"
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
  "description": "process resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


