---
title: "clientAuthentication resource type"
description: "Represents client authentication information."
author: "brozbab"
ms.localizationpriority: high
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# clientAuthentication resource type

Namespace: microsoft.graph

Client authentication information.

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|clientSecret|String|The client secret obtained from configuring the client application on the external identity provider. <br> The property includes the client secret. Used when the **oidcClientSecretAuthentication** object type is set. This enables the identity provider to use either the client_secret_post or client_secret_jwt authentication method. Conversely, when the **oidcPrivateJwtKeyClientAuthentication** object type is set, the setting allows configuration of the identity provider using private_key_jwt authentication method, which doesn't require client secret.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "#microsoft.graph.OIDCClientSecretAuthentication"
}
-->

``` json
{
  "clientSecret": "String"
  }
```

### Where to get the client identifier and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client identifier and client secret can be passed to [create identityProvider](../api/identitycontainer-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign-in page. The token from the identity provider is validated by Microsoft Entra ID before the tenant issues a token to the application.
