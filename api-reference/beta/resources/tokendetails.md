---
title: "tokenDetails resource type"
description: "Property that represents an access token's unique identifier and the time when the token was issued."
author: "vimrang"
ms.date: 03/26/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# tokenDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Describes a complex property that represents an access token's unique identifier and the time when the token was issued. **uniqueTokenIdentifier** is unique for every access token.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|issuedAtDateTime|DateTimeOffset|Represents when the authentication for this token occurred.|
|uniqueTokenIdentifier|String|Represents the token identifier claim. This ID is a unique per-token identifier that is case-sensitive.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tokenDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tokenDetails",
  "uniqueTokenIdentifier": "String",
  "issuedAtDateTime": "String (timestamp)"
}
```