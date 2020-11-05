---
title: "authenticationContextClassReference resource type"
description: "Represents an Azure Active Directory authentication context class reference. Authentication context class references are custom values that define an authentication requirement."
localization_priority: Normal
author: "calebb"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationContextClassReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory authentication context class reference. Authentication context class references are custom values that define an authentication requirement.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List authenticationContextClassReference](../api/conditionalaccessroot-list-policies.md) | [conditionalAccessPolicy](conditionalaccesspolicy.md) collection | Get all of the conditionalAccessPolicies objects in the organization. |
| [Create authenticationContextClassReference](../api/conditionalaccessroot-post-policies.md) | [conditionalAccessPolicy](conditionalaccesspolicy.md) | Create a new conditionalAccessPolicy object. |
| [Get authenticationContextClassReference](../api/conditionalaccesspolicy-get.md) | [conditionalAccessPolicy](conditionalaccesspolicy.md) | Read properties and relationships of a conditionalAccessPolicy object. |
| [Update authenticationContextClassReference](../api/conditionalaccesspolicy-update.md) | [conditionalAccessPolicy](conditionalaccesspolicy.md) | Update a conditionalAccessPolicy object. |
| [Delete authenticationContextClassReference](../api/conditionalaccesspolicy-delete.md) | None | Delete a conditionalAccessPolicy object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Identifier used to reference the authentication context class. The id is used to trigger step-up authentication for the referenced authentication requirements and is the value that will be issued in the acrs claim. This value in the claim is used to verify the required authentication context has been satisfied. |
|displayName|String| DisplayName is the friendly name of the authenticationContextClassReference. This value should be used to identify the authentication context class reference when building user facing admin experiences, like selection UX. |
|description|String| Description is a short explanation the policies that will be enforced by authenticationContextClassReference. This value should be used to provide secondary text to describe the authentication context class reference when building user facing admin experiences, like selection UX.|
|isAvailable|Boolean| IsAvailable is set to true if the authenticationContextClassReference has been published by the security admin and ready for use by apps. When it is set to false it should not be shown in admin UX experiences, because the value is not currently available for selection.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "displayName",
    "description",
    "sessionControls",
    "grantControls"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
            "id": "String",
            "displayName": "String",
            "description": "String",
            "isAvailable": “Boolean”,
        }
     }

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->