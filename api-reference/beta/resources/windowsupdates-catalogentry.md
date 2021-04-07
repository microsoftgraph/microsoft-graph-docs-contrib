---
title: "catalogEntry resource type"
description: "Metadata for a piece of content that can be approved for deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# catalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for a piece of content that can be approved for deployment.

All catalog entries exist as one of the following derived types: [featureUpdateCatalogEntry](../resources/windowsupdates-featureupdatecatalogentry.md) and [qualityUpdateCatalogEntry](../resources/windowsupdates-qualityupdatecatalogentry.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content was or will no longer be available to deploy using the service. Read-only.|
|displayName|String|The display name of the content. Read-only.|
|id|String|The unique identifier for the catalog entry. Read-only.|
|releaseDateTime|DateTimeOffset|The date on which the content was or will be released. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.catalogEntry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.catalogEntry",
  "id": "String (identifier)",
  "displayName": "String",
  "releaseDateTime": "String (timestamp)",
  "deployableUntilDateTime": "String (timestamp)"
}
```

