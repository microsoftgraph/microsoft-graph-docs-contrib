---
title: "Windows Updates Quick Machine RecoveryUpdateCatalogEntry resource type"
description: "Represents an entity that governs the Quick Machine Recovery Update Catalog Entry."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# Quick Machine Recovery Update Catalog Entry Resource Type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the Quick Machine Recovery Update Catalog Entry.

Inherits from [microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/windowsupdates-quickmachinerecoveryupdatecatalogentry-list.md)|[microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry](../resources/windowsupdates-quickmachinerecoveryupdatecatalogentry.md) collection|Get a list of the recoveryUpdateCatalogEntry objects and their properties.|
|[Get](../api/windowsupdates-quickmachinerecoveryupdatecatalogentry-get.md)|[microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry](../resources/windowsupdates-quickmachinerecoveryupdatecatalogentry.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry](../resources/windowsupdates-quickmachinerecoveryupdatecatalogentry.md) object.|
|[Update](../api/windowsupdates-quickmachinerecoveryupdatecatalogentry-update.md)|[microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry](../resources/windowsupdates-quickmachinerecoveryupdatecatalogentry.md)|Update the properties of a recoveryUpdateCatalogEntry object.|
|[Delete](../api/windowsupdates-quickmachinerecoveryupdatecatalogentry-delete.md)|None|Delete a recoveryUpdateCatalogEntry object.|
|[List productRevisions](../api/windowsupdates-quickmachinerecoveryupdatecatalogentry-list-productrevisions.md)|[microsoft.graph.windowsUpdates.productRevision](../resources/windowsupdates-productrevision.md) collection| Enumerate Windows product revisions. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|catalogName|String|The catalog name. Read-only.|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available to deploy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md).|
|displayName|String|The display name of the content. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md).|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|releaseDateTime|DateTimeOffset| The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|productRevisions|[microsoft.graph.windowsUpdates.productRevision](../resources/windowsupdates-productrevision.md) collection|Represents a collection of product revisions associated with the update.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "openType": "id"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry",
  "id": "String (identifier)",
  "displayName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "releaseDateTime": "String (timestamp)",
  "catalogName": "String"
}
```

