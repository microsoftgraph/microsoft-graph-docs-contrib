---
title: "recoveryUpdateCatalogEntry resource type"
description: "Represents an entity that governs the quick machine recovery update catalog entry."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# recoveryUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the quick machine recovery update catalog entry.

Inherits from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).

## Methods

See [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md), for a list of supported methods.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|catalogName|String|The catalog name. Read-only.|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available to deploy. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|displayName|String|The display name of the content. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [entity](../resources/entity.md).|
|releaseDateTime|DateTimeOffset| The release date for the content. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|productRevisions|[microsoft.graph.windowsUpdates.productRevision](../resources/windowsupdates-productrevision.md) collection|A collection of product revisions associated with the update.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "openType": "false"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry",
  "catalogName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "releaseDateTime": "String (timestamp)"
}
```

