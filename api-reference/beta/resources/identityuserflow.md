---
title: "identityUserFlow resource type (deprecated)"
description: "Identity user flows are built-in authentication journeys"
ms.localizationpriority: medium
author: "Nickgmicrosoft"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
toc.title: User flows in Azure AD B2C (deprecated)
ms.date: 10/18/2024
---

# identityUserFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [identityuserflow-deprecate](../../includes/identityuserflow-deprecate.md)]

User Flows enable you to define predefined, configurable policies for sign-in, sign-up, combined sign-up and sign-in, password reset, and profile update.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/identityuserflow-list.md) | [UserFlow](identityuserflow.md) collection | List UserFlows. |
| [Create](../api/identityuserflow-post-userflows.md) | [UserFlow](identityuserflow.md) | Create UserFlow object. |
| [Get](../api/identityuserflow-get.md) | [UserFlow](identityuserflow.md) | Read properties and relationships of UserFlow object. |
| [Delete](../api/identityuserflow-delete.md) | None | Delete UserFlow object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| The identifier of the user flow. The prefix of **B2C_1_** is added to the value that you provide.|
|userFlowType|userFlowType| Possible values are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`, `unknownFutureValue`.|
|userFlowTypeVersion|Single| The version number of the user flow type. Each user flow type can have different possible versions such as 1, 1.1 or 2.  |

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.UserFlow",
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


