---
title: "oAuthFlow resource type"
description: "An object containing configuration information for a supported OAuth flow."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# oAuthFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An object containing configuration information for a supported [OAuth flow](../resources/oauthflows.md) in an [oAuth2SecurityScheme](../resources/oauth2securityscheme.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationUrl|String|The authorization URL to be used for this flow. This MUST be in the form of a URL. The OAuth2 standard requires the use of TLS.|
|refreshUrl|String|The URL to be used for obtaining refresh tokens. This MUST be in the form of a URL. The OAuth2 standard requires the use of TLS.|
|scopes|[oAuthScopeDictionary](../resources/oauthscopedictionary.md)|The available scopes for the OAuth2 security scheme. A map between the scope name and a short description for it. The map MAY be empty.|
|tokenUrl|String|The token URL to be used for this flow. This MUST be in the form of a URL. The OAuth2 standard requires the use of TLS.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oAuthFlow"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oAuthFlow",
  "authorizationUrl": "String",
  "tokenUrl": "String",
  "refreshUrl": "String",
  "scopes": {
    "@odata.type": "microsoft.graph.oAuthScopeDictionary"
  }
}
```

