---
title: "contentLink resource type"
description: "A URL with a display label, attached to a plan or task. `displayName` is the label and `webUrl` is the destination URL, both returned by default; preview, icon, and content-type metadata are opt-in."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# contentLink resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A URL with a display label, attached to a [plan](plan.md) or [task](task.md). `displayName` is the label and `webUrl` is the destination URL, both returned by default; preview, icon, and content-type metadata are opt-in.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/task-list-links.md)|[contentLink](../resources/contentlink.md) collection|Get a list of the contentLink objects and their properties.|
|[Create](../api/task-post-links.md)|[contentLink](../resources/contentlink.md)|Create a new contentLink object.|
|[Get](../api/contentlink-get.md)|[contentLink](../resources/contentlink.md)|Read the properties and relationships of [contentLink](../resources/contentlink.md) object.|
|[Update](../api/contentlink-update.md)|[contentLink](../resources/contentlink.md)|Update the properties of a contentLink object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[contentLinkCapability](../resources/contentlinkcapability.md)|Server-computed, read-only capability flags indicating which optional features are enabled for the entity.|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who created the entity. Read-only.|
|displayName|String|Display label for the link.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who last modified the entity. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the entity was last modified. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|linkType|contentLinkType|Type of content the link points to. The possible values are: `documentReference`, `webReference`, `unknownFutureValue`.|
|webUrl|String|URL the link points to.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contentLink",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentLink",
  "id": "String (identifier)",
  "displayName": "String",
  "linkType": "String",
  "webUrl": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "capabilities": {
    "@odata.type": "microsoft.graph.contentLinkCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

