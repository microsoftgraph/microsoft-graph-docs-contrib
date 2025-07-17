---
title: "softwareUpdateCatalogEntry resource type"
description: "Metadata for a software update that you can approve for deployment."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 09/16/2024
---

# softwareUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for a software update that you can approve for deployment.

Inherits from [catalogEntry](../resources/windowsupdates-catalogentry.md). Base type for [featureUpdateCatalogEntry](../resources/windowsupdates-featureupdatecatalogentry.md) and [qualityUpdateCatalogEntry](../resources/windowsupdates-qualityupdatecatalogentry.md).

This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available for deployment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|displayName|String|The display name of the content. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|releaseDateTime|DateTimeOffset|The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.catalogEntry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "id": "String (identifier)",
  "displayName": "String",
  "releaseDateTime": "String (timestamp)",
  "deployableUntilDateTime": "String (timestamp)"
}
```

