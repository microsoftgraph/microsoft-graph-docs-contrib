---
title: "appleManagedIdentityProvider resource type"
description: "Represents apple identity provider in an Azure AD B2C tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# appleManagedIdentityProvider resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can configure Apple as a social identity provider for an Azure AD B2C tenant. Based on the information Apple provides, the API will generate a client secret. Apple needs the secret to be renewed every six months. This will have to be done manually. This type will inherit from [identityProviderBase](../identityproviderbase.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create](../api/identityproviderbase-post-identityproviders.md)|appleManagedIdentityProvider |Create a new Apple identity provider configuration.|
|[Get](../api/identityprovider-get.md) |appleManagedIdentityProvider |Retrieve properties of the Apple identity provider configuration.|
|[Update](../api/identityprovider-update.md)|None|Update the Apple identity provider configuration.|
|[Delete](../api/identityprovider-delete.md)|None|Delete the Apple identity provider configuration.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|developerId|String|The Apple Developer identifier. Required.|
|serviceId|String|The Apple Developer identifier. Required.|
|keyId|String|The Apple Key identifier. Required.|
|certificateData|String|The certificate data which is a long string of text from the certificate, can be null.|

### Where to get the client ID and secret


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appleManagedIdentityProvider"
} -->

```json
{
    "id": "String",
    "displayName": "String",
    "developerId": "String",
    "serviceId": "String",
    "keyId": "String",
    "certificateData": "String"
}
```
