---
title: "passwordProfile resource type"
description: "Contains the password profile associated with a user. The **passwordProfile** property of the user entity is a **passwordProfile** object."
ms.localizationpriority: high
author: "yyuank"
ms.reviewer: "iamut"
ms.prod: "users"
doc_type: resourcePageType
---

# passwordProfile resource type

Namespace: microsoft.graph

Contains the password profile associated with a user. The **passwordProfile** property of the [user](user.md) entity is a **passwordProfile** object.


## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|forceChangePasswordNextSignIn|Boolean| `true` if the user must change their password on the next sign-in; otherwise `false`.|
|forceChangePasswordNextSignInWithMfa|Boolean| If `true`, at next sign-in, the user must perform a multifactor authentication (MFA) before being forced to change their password. The behavior is identical to **forceChangePasswordNextSignIn** except that the user is required to first perform a multifactor authentication before password change. After a password change, this property will be automatically reset to `false`. If not set, default is `false`. |
|password|String|The password for the user. This property is required when a user is created. It can be updated, but the user will be required to change the password on the next sign-in. The password must satisfy minimum requirements as specified by the user's **passwordPolicies** property. By default, a strong password is required.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordProfile"
}-->

```json
{
  "forceChangePasswordNextSignIn": true,
  "forceChangePasswordNextSignInWithMfa": false,
  "password": "string"
}

```

## Related content

- [Update the passwordProfile of a user](../api/user-update.md#example-3-update-the-passwordprofile-of-a-user-and-reset-their-password)
