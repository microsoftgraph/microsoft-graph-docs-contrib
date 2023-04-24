---
title: "objectIdentity resource type"
description: "Represents an identity used to sign in to a user account."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "users"
author: "yyuank"
---

# objectIdentity resource type

Namespace: microsoft.graph

Represents an identity used to sign in to a user account. An identity can be provided by Microsoft, by organizations, or by social identity providers such as Facebook, Google, or Microsoft, that are tied to a user account. This enables the user to sign in to the user account with any of those associated identities.

The **identities** property of the [user](user.md) resource is an **objectIdentity** object.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|issuer|string|Specifies the issuer of the identity, for example `facebook.com`.<br>For local accounts (where **signInType** is not `federated`), this property is the local B2C tenant default domain name, for example `contoso.onmicrosoft.com`.<br>For external users from other Azure AD organization, this will be the domain of the federated organization, for example `contoso.com`.<br><br>Supports `$filter`. 512 character limit.|
|issuerAssignedId|string|Specifies the unique identifier assigned to the user by the issuer. The combination of **issuer** and **issuerAssignedId** must be unique within the organization. Represents the sign-in name for the user, when **signInType** is set to `emailAddress` or `userName` (also known as local accounts).<br>When **signInType** is set to: <ul><li>`emailAddress`, (or a custom string that starts with `emailAddress` like `emailAddress1`) **issuerAssignedId** must be a valid email address</li><li>`userName`, **issuerAssignedId** must begin with alphabetical character or number, and can only contain alphanumeric characters and the following symbols: - or _</li></ul>Supports `$filter`. 64 character limit.|
|signInType|String| Specifies the user sign-in types in your directory, such as `emailAddress`, `userName`, `federated`, or `userPrincipalName`. `federated` represents a unique identifier for a user from an issuer, that can be in any format chosen by the issuer. Setting or updating a `userPrincipalName` identity will update the value of the **userPrincipalName** property on the user object. The validations performed on the `userPrincipalName` property on the user object, for example, verified domains and acceptable characters, will be performed when setting or updating a `userPrincipalName` identity. Additional validation is enforced on **issuerAssignedId** when the sign-in type is set to `emailAddress` or `userName`. This property can also be set to any custom string. |

### Filtering
When filtering on the **identities** property for an **issuerAssignedId**, you must supply both **issuer** and **issuerAssignedId**. In addition:
- Filtering for entries with a **signInType** of `federated` requires a valid **issuer** and **issuerAssignedId**.
- Filtering for entries with a **signInType** of `userName` or `emailAddress` ignores the issuer value. This is by design. 
- Filtering for entries with a **signInType** of `userPrincipalName` is not supported. This can instead be accomplished by filtering on the **userPrincipalName** property on the user object.

Filtering on **issuer** alone is supported for the following values: `google.com`, `facebook.com`, `mail`, and `phone`.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.objectIdentity"
}-->

```json
{
  "signInType": "string",
  "issuer": "string",
  "issuerAssignedId": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "objectIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

