---
title: "validationResult resource type"
description: "Exposes the properties that specify the rules against which a user's password was validated, and the validation results."
author: "yyuank"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: resourcePageType
---

# validationResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes the properties that specify the rules against which a user's password was validated, and the validation results.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|message|String| The string containing the reason for why the rule passed or not. Read-only. Not nullable.|
|ruleName|String| The string containing the name of the password validation rule that the action was validated against. Read-only. Not nullable.|
|validationPassed|Boolean| Whether the password passed or failed the validation rule. Read-only. Not nullable.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.validationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.validationResult",
  "ruleName": "String",
  "validationPassed": "Boolean",
  "message": "String"
}
```

