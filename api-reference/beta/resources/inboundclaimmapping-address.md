---
title: "inboundClaimMapping Address resource type"
description: "End-user's preferred postal address. The value of the address member is a JSON [RFC8259] structure containing some or all of the members defined below"
author: "brozbab"
ms.localizationpriority: high
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# inboundClaimMapping Address resource type

Namespace: microsoft.graph

After the custom identity provider sends an ID token back to Microsoft Entra External ID, Microsoft Entra External ID maps the claims from a token to the claims that Microsoft Entra External ID recognizes and uses.

You can configure the following standard OpenID Connect (OIDC) address claims with the claims your identity provider provides in the ID Token.

## Properties

|Property|User flow attribute|Type|Description|
|:-------|-----|:---|:----------|
|street_address|Street Address|String|Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair ("\r\n") or as a single line feed character ("\n").|
|locality |City|String|City or locality.|
|region|State or Province|String|State, province, prefecture, or region.|
|postal_code|ZIP or Postal Code|String|Zip code or postal code.|
|country |Country or Region|String|Country name.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.address"
}
-->

``` json
{
    "sub": "String",
    "name": "String",
    "given_name": "String",
    "family_name": "String",
    "email": "String",
    "email_verified": "Boolean",
    "phone_number": "String",
    "phone_number_verified": "Boolean",
    "address": {
        "streetAddress": "String",
        "locality": "String",
        "region": "String",
        "postalCode": "String",
        "country": "String"
    }
  }
```
