---
title: "cvssSummary resource type"
description: "**TODO: Add Description**"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# cvssSummary resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|score|Decimal|**TODO: Add Description**|
|severity|microsoft.graph.security.vulnerabilitySeverity|**TODO: Add Description**.The possible values are: `none`, `low`, `medium`, `high`, `critical`, `unknownFutureValue`.|
|vectorString|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cvssSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cvssSummary",
  "score": "Decimal",
  "severity": "String",
  "vectorString": "String"
}
```

