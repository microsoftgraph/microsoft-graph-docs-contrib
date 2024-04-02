---
title: "groupClaimFilter resource type"
description: "Use this property to apply a filter on the user’s groups to be included in the group claim."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# groupClaimFilter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this property to apply a filter on the user’s groups to be included in the group claim. This can be a useful means of reducing the token size.

Inherits from [groupClaimFilterBase](../resources/groupclaimfilterbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|matchOn|matchOn|Identifies the group attribute on which the filter would be applied. The possible values are: `displayName`, `samAccountName`, `unknownFutureValue`.|
|type|filterType| Selects the type of filter you wish to apply to the attribute selected by the MatchOn property. The possible values are: `prefix`, `suffix`, `contains`, `unknownFutureValue`.|
|value|String|The value of the filter to be applied.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupClaimFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupClaimFilter",
  "type": "String",
  "matchOn": "String",
  "value": "String"
}
```
