---
title: "builtInIdentityProvider resource type"
description: "Represents built-in identity providers in a Microsoft Entra tenant."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "namkedia"
ms.date: 11/16/2024
---

# builtInIdentityProvider resource type
Namespace: microsoft.graph

Represents built-in identity providers for a Microsoft Entra tenant.

For Microsoft Entra B2B scenarios in a Microsoft Entra tenant, the built-in identity provider type can be a Microsoft Entra ID, Microsoft account(MSA) or email one-time passcode (EmailOTP).

This type inherits from [identityProviderBase](../resources/identityproviderbase.md).

## Methods
None.

For the list of API operations for managing built-in identity providers, see the [identityProviderBase](../resources/identityproviderbase.md) resource type.

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Read-only.|
|identityProviderType|String|The identity provider type. For a B2B scenario, possible values: `AADSignup`, `MicrosoftAccount`, `EmailOTP`. Required.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.builtInIdentityProvider"
} -->

```json
{
    "displayName": "String",
    "id": "String",
    "identityProviderType": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2021-03-30 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
 "description": "builtinIdentityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
