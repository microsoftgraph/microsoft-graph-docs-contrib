---
title: "passwordValidationInformation resource type"
description: "Exposes the properties that specify whether a user's password is valid when validated against the tenant's password validation policy."
author: "yyuank"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: resourcePageType
---

# passwordValidationInformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes the properties that specify whether a user's password is valid, when validated against the tenant's password validation policy. This resource also returns the list of rules against which the password was validated and whether the user's password passed those roles.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isValid|Boolean| Specifies whether the password is valid based on the calculation of the results in the **validationResults** property. Not nullable. Read-only. |
|validationResults|[validationResult](../resources/validationresult.md) collection| The list of password validation rules and whether the password passed those rules. Not nullable. Read-only. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.passwordValidationInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordValidationInformation",
  "isValid": "Boolean",
  "validationResults": [
    {
      "@odata.type": "microsoft.graph.validationResult"
    }
  ]
}
```

