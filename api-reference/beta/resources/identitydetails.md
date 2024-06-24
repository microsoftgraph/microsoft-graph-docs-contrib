---
title: "identityDetails resource type"
description: "Represents the details for identity findings."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# identityDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details for identity findings

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the Identity was created, could be null|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the Identity was active last time, could be null|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityDetails",
  "createdDateTime": "String (timestamp)",
  "lastActiveDateTime": "String (timestamp)"
}
```

