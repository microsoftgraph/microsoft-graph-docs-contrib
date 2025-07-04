---
title: "oidcAddressInboundClaims resource type"
description: "End-user's preferred postal address. The value of the address member is a JSON [RFC8259] structure containing some or all of the members defined below"
author: "brozbab"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/16/2024
---

# oidcAddressInboundClaims resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

After the custom identity provider sends an ID token back to Microsoft Entra, Microsoft Entra maps the claims from a token to the claims that Microsoft Entra recognizes and uses.

You can configure the following standard OpenID Connect (OIDC) address claims with the claims your identity provider provides in the ID Token.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|country|String|Country name.|
|locality|String|City or locality.|
|postal_code|String|Zip code or postal code.|
|region|String|Country name.|
|street_address|String|Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair ("\r\n") or as a single line feed character ("\n").|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oidcAddressInboundClaims"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oidcAddressInboundClaims",
  "street_address": "String",
  "locality": "String",
  "region": "String",
  "postal_code": "String",
  "country": "String"
}
```
