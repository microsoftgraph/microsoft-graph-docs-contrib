---
title: "authenticationContextClassReference resource type"
description: "Represents a Microsoft Entra authentication context class reference."
ms.localizationpriority: medium
author: "swetha-rai"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# authenticationContextClassReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra authentication context class reference. Authentication context class references are custom values that define a Conditional Access authentication requirement.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/conditionalaccessroot-list-authenticationcontextclassreferences.md) | [authenticationContextClassReference](authenticationContextClassReference.md) collection | Get all of the authenticationContextClassReference objects in the organization. |
| [Create](../api/conditionalaccessroot-post-authenticationcontextclassreferences.md) | [authenticationContextClassReference](authenticationContextClassReference.md) | Create a new authenticationContextClassReference object. |
| [Get](../api/authenticationcontextclassreference-get.md) | [authenticationContextClassReference](authenticationContextClassReference.md) | Read properties and relationships of a authenticationContextClassReference object. |
| [Update](../api/authenticationcontextclassreference-update.md) | None | Update a authenticationContextClassReference object. |
| [Delete](../api/authenticationcontextclassreference-delete.md) | None | Delete an authenticationContextClassReference object. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Identifier used to reference the authentication context class. The ID is used to trigger step-up authentication for the referenced authentication requirements and is the value that will be issued in the `acrs` claim of an access token. This value in the claim is used to verify that the required authentication context has been satisfied. The allowed values are `c1` through `c25`. <br/> Supports `$filter` (`eq`). |
|displayName|String| A friendly name that identifies the authenticationContextClassReference object when building user-facing admin experiences. For example, a selection UX. |
|description|String| A short explanation of the policies that are enforced by authenticationContextClassReference. This value should be used to provide secondary text to describe the authentication context class reference when building user facing admin experiences. For example, selection UX. |
|isAvailable|Boolean| Indicates whether the authenticationContextClassReference has been published by the security admin and is ready for use by apps. When it's set to `false`, it shouldn't be shown in selection UX used to tag resources with authentication context class values. It will still be shown in the Conditional Access policy authoring experience. <br/> Supports `$filter` (`eq`). |


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "displayName",
    "description",
    "sessionControls",
    "grantControls"
  ],
  "@odata.type": "microsoft.graph.authenticationContextClassReference",
  "baseType": "microsoft.graph.entity",
  "keyProperty": "id"
}-->

```json
    {
      "id": "String",
      "displayName": "String",
      "description": "String",
      "isAvailable": "Boolean",
    }

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "authenticationContextClassReference resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
