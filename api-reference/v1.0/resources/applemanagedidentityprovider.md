---
title: "appleManagedIdentityProvider resource type"
description: "Represents the Apple identity provider in an Azure AD B2C tenant."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "namkedia"
ms.date: 07/22/2024
---

# appleManagedIdentityProvider resource type
Namespace: microsoft.graph

Represents the Apple identity provider in an Azure AD B2C tenant.

You can configure Apple as a social identity provider for an Azure AD B2C tenant. Based on the information, Apple provides, the API generates a client secret. Apple needs the secret to be renewed every six months. You have to manually rotate the secret.

Inherits from [identityProviderBase](../resources/identityproviderbase.md).

## Methods

None.

For the list of API operations for managing Apple-managed identity providers, see the [identityProviderBase](../resources/identityproviderbase.md) resource type.


## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|certificateData|String|The certificate data, which is a long string of text from the certificate. Can be null.|
|developerId|String|The Apple developer identifier. Required.|
|displayName|String|The display name of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Read-only.|
|keyId|String|The Apple key identifier. Required.|
|serviceId|String|The Apple service identifier. Required.|

Retrieve the **developerId**, **serviceId**, **keyId**, and the **certificateData** from the Apple developer portal. For more information, follow the guide to [create an Apple ID application](/azure/active-directory-b2c/identity-provider-apple-id?pivots=b2c-user-flow#create-an-apple-id-application).

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appleManagedIdentityProvider"
} -->

```json
{
    "certificateData": "String",
    "displayName": "String",
    "developerId": "String",
    "id": "String",
    "keyId": "String",
    "serviceId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2021-03-30 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
 "description": "appleIdentityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
