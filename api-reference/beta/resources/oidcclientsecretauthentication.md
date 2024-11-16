---
title: "oidcClientSecretAuthentication resource type"
description: "Represents client authentication information."
author: "brozbab"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/16/2024
---

# oidcClientSecretAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Client authentication information.

Inherits from [oidcClientAuthentication](../resources/oidcclientauthentication.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|clientSecret|String|The client secret obtained from configuring the client application on the external OpenID Connect identity provider. <br> The property includes the client secret. Used when the **oidcClientSecretAuthentication** object type is set. This enables the identity provider to use either the client_secret_post or client_secret_jwt authentication method. Conversely, when the **oidcPrivateJwtKeyClientAuthentication** object type is set, the setting allows configuration of the identity provider using private_key_jwt authentication method, which doesn't require client secret.|

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

