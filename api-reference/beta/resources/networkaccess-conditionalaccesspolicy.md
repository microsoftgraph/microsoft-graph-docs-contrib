---
title: "conditionalAccessPolicy resource type"
description: "represents the configuration and settings of a conditional access policy within a network infrastructure, which determines the access control rules and conditions for network traffic filtering."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# conditionalAccessPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

represents the configuration and settings of a conditional access policy within a network infrastructure, which determines the access control rules and conditions for network traffic filtering.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Indicates the date and time the conditional access policy was created.|
|description|String|Provides a summary of the conditional access policy.|
|displayName|String|Represents the human-readable name or title assigned to the conditional access policy.|
|id|String|Represents the unique identifier assigned to the conditional access policy. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|Indicates the date and time when the conditional access policy was last modified.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.conditionalAccessPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.conditionalAccessPolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String"
}
```

