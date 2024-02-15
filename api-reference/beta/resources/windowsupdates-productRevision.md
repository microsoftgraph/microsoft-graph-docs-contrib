---
title: "productRevision resource type"
description: "This entity represents a product revision related to a specific Windows Product"
author: "skandula"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# productRevision resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The productRevision entity type represents a product revision related to a specific Windows Product.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available to deploy using the service. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|displayName|String|The display name of the content. Read-only.|
|id|String|The unique identifier for the entry. Read-only.|
|releaseDateTime|DateTimeOffset|The release date and time for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|version|String| The version number of the product.|
|product|String| The name of the affected product. |



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
  "deployableUntilDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "releaseDateTime": "String (timestamp)"
}
```
