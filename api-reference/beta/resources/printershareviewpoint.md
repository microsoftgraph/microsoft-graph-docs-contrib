---
title: "printerShareViewpoint resource type"
description: "Represents additional data for a printer share as viewed by the signed-in user."
author: "mayankbansal018"
ms.localizationpriority: medium
ms.subservice: "universal-print"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printerShareViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents additional data for a printer share as viewed by the signed-in user.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastUsedDateTime|DateTimeOffset|Date and time when the printer was last used by the signed-in user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerShareViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerShareViewpoint",
  "lastUsedDateTime": "String (timestamp)"
}
```

