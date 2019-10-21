---
title: "UserFlow resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "valnav"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# UserFlow resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/identityuserflows-list-userflows.md) | [UserFlow](identityuserflow.md) | List UserFlows. |
| [Get UserFlow](../api/identityuserflow-get.md) | [UserFlow](identityuserflow.md) | Read properties and relationships of UserFlow object. |
| [Create](../api/identityuserflow-post-userflows.md) | None | Create UserFlow object. |
| [Delete](../api/identityuserflow-delete.md) | None | Delete UserFlow object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|
|userFlowType|string| Possible values are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`, `unknownFutureValue`.|
|userFlowTypeVersion|Single||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.UserFlow",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "userFlowType": "string",
  "userFlowTypeVersion": "Single"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "UserFlow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
