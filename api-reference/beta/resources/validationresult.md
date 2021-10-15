---
title: "validationResult resource type"
description: "Resource that exposes the properties that specify whether a user's password is valid when validated against the tenant's password validation policy."
author: "yyuank"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: resourcePageType
---

# validationResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resource that exposes the properties that specify whether a user's password is valid when validated against the tenant's password validation policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|message|String| The string containing the user friendly response reason for why the rule passed or not. Read-only. Required. |
|ruleName|String| The string containing the name of the password validation rule that the action was validated against. Read-only. Required. |
|validationPassed|Boolean| Whether the password passed or failed the validation rule. Read-only. Required.|

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

