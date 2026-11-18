---
title: "webFilteringSourceMatching resource type"
description: "Represents the source session criteria used to match web traffic in a web filtering rule."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringSourceMatching resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the source session criteria used to match web traffic in a [webFilteringRule](../resources/networkaccess-webfilteringrule.md).

This type is used by the **sources** property of [webFilteringMatchingConditions](../resources/networkaccess-webfilteringmatchingconditions.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sessionType|[microsoft.graph.networkaccess.sessionType](../resources/enums-networkaccess.md#sessiontype-values)|The type of session to match. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `user`, `agent`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringSourceMatching"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringSourceMatching",
  "sessionType": "String"
}
```
