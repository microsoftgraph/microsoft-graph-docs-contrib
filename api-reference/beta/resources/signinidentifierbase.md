---
title: "signInIdentifierBase resource type"
description: "Represents the base type for sign-in identifiers that enable users to authenticate with alternative identifiers. Use concrete types like emailSignInIdentifier, upnSignInIdentifier, usernameSignInIdentifier, or customUsernameSignInIdentifier for actual API operations."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# signInIdentifierBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base type for sign-in identifiers that enable users to authenticate with alternative identifiers such as email addresses, usernames, or custom identifiers like account numbers or employee IDs. This is an abstract type that serves as the foundation for specific sign-in identifier implementations.

This is an abstract type from which the following types are derived.

- [upnSignInIdentifier](../resources/upnsigninidentifier.md) resource type
- [emailSignInIdentifier](../resources/emailsigninidentifier.md) resource type
- [usernameSignInIdentifier](../resources/usernamesigninidentifier.md) resource type
- [customUsernameSignInIdentifier](../resources/customusernamesigninidentifier.md) resource type

For more information, see [Sign in with an alias or username (preview)](/entra/external-id/customers/how-to-sign-in-alias).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/signinidentifierbase-get.md)|[signInIdentifierBase](../resources/signinidentifierbase.md)|Read the properties and relationships of [signInIdentifierBase](../resources/signinidentifierbase.md) object.|
|[Update](../api/signinidentifierbase-update.md)|[signInIdentifierBase](../resources/signinidentifierbase.md)|Update the properties of a signInIdentifierBase object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether this sign-in identifier type is enabled for user authentication in the tenant.|
|name|String|The unique name identifier for this sign-in identifier configuration. Possible values include: `Email`, `UPN`, `Username`, `CustomUsername1`, `CustomUsername2`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "name",
  "@odata.type": "microsoft.graph.signInIdentifierBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInIdentifierBase",
  "name": "String (identifier)",
  "isEnabled": "Boolean"
}
```
