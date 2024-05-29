---
author: "spgraph-docs-team"
title: "identity resource type"
description: "Represents an identity of an actor."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---
# identity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity of an _actor_. For example, an actor can be a user, device, or application.

Base type of [userIdentity](useridentity.md).

## Properties

| Property            | Type   | Description                                                                                                                                                                                                                                                                                                           |
|:--------------------|:-------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| displayName         | String | The display name of the identity. The display name might not always be available or up to date. For example, if a user changes their display name the API might show the new value in a future response, but the items associated with the user won't show up as having changed when using [delta](../api/driveitem-delta.md).       |
| id                  | String | Unique identifier for the identity. When the unique identifier is unavailable, the **displayName** property is provided for the identity, but the **id** property isn't included in the response. |
| tenantId            | String | Unique identity of the tenant. Optional.                                    |
| thumbnails          | [thumbnailSet](thumbnailset.md) | Keyed collection of thumbnail resources. Optional. |

## JSON representation

The following JSON representation shows the resource type.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.identity", "optionalProperties": ["displayName", "tenantId", "thumbnails"], "openType": true } -->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "tenantId": "String",
  "thumbnails": { "@odata.type": "microsoft.graph.thumbnailSet" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Identity contains information about an app, user, or group.",
  "keywords": "identity,owner,modifier,app,user,group",
  "section": "documentation",
  "tocPath": "Resources/Identity",
  "suppressions": []
}
-->


