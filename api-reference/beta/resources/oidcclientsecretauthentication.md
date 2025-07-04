---
title: "oidcClientSecretAuthentication resource type"
description: "Represents client authentication information in an oidcIdentityProvider provider object where the client secret is used to authenticate the client application."
author: "brozbab"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/16/2024
---

# oidcClientSecretAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents client authentication information in an **oidcIdentityProvider** provider object where the client secret is used to authenticate the client application with the external OpenID Connect identity provider.

Inherits from [oidcClientAuthentication](../resources/oidcclientauthentication.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|clientSecret|String|The client secret obtained from configuring the client application on the external OpenID Connect identity provider. The property includes the client secret and enables the identity provider to use either the `client_secret_post` authentication method. |

### Where to get the client identifier and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client identifier and client secret can be passed to [create identityProvider](../api/identitycontainer-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign-in page. The token from the identity provider is validated by Microsoft Entra ID before the tenant issues a token to the application.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oidcClientSecretAuthentication"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oidcClientSecretAuthentication",
  "clientSecret": "String"
}
```

