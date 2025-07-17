---
title: "securityActionState resource type"
description: "Represents the history of securityAction state changes."
ms.localizationpriority: medium
author: "preetikr"
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# securityActionState resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the history of securityAction state changes.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appId|String|The Application ID of the calling application that submitted an update (PATCH) to the action. The `appId` should be extracted from the auth token and not entered manually by the calling application.|
|status|String| Status of the securityAction in this update. Possible values are: `NotStarted`, `Running`, `Completed`, `Failed`.|
|updatedDateTime|DateTimeOffset| Timestamp when the actionState was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|user|String|The user principal name of the signed-in user that submitted an update (PATCH) to the action. The `user` should be extracted from the auth token and not entered manually by the calling application.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.securityActionState",
  "baseType": null
}-->

```json
{
  "appId": "String",
  "status": "String",
  "updatedDateTime": "String (timestamp)",
  "user": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "securityActionState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


