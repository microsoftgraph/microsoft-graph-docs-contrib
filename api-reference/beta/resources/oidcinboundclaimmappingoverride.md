---
title: "oidcInboundClaimMappingOverride resource type"
description: "Maps identity provider claims from a token to the claims that Microsoft Entra External ID recognizes and uses."
author: "brozbab"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/16/2024
---

# oidcInboundClaimMappingOverride resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

After the custom identity provider sends the ID token back to Microsoft Entra, Microsoft Entra maps the claims from the received token with the claims that Microsoft Entra recognizes and uses. These ID token claims are used to uniquely identify and provide information about the user during sign-up. These information pieces are stored in the corresponding user attributes in the user's profile in your directory.
You can configure the following standard OpenID Connect (OIDC) claims with the claims your identity provider provides in the ID Token.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|address|[oidcAddressInboundClaims](../resources/oidcaddressinboundclaims.md)|End-user's preferred postal address. The value of the address member is a JSON [RFC8259] structure containing some or all of the members defined in the resource type|
|email|String|End-user's preferred e-mail address. Its value MUST conform to the RFC 5322 [RFC5322] addr-spec syntax.|
|email_verified|String|True if the end-user's e-mail address has been verified by the identity provider; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to ensure that this e-mail address was controlled by the end-user at the time the verification was performed. If this claim value is false, or not mapped with any claim of the identity provider, the user is asked to verify email during sign-up if email is required in the user flow.|
|family_name|String|Surname(s) or family name of the end-user.|
|given_name|String|Given name(s) or first name(s) of the end-user.|
|name|String|End-user's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the end-user's locale and preferences.|
|phone_number|String|The claim provides the phone number for the user.|
|phone_number_verified|String|True if the end-user's phone number has been verified; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to verify the phone number.|
|sub|String|Subject - Identifier for the end-user at the Issuer.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oidcInboundClaimMappingOverride"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oidcInboundClaimMappingOverride",
  "sub": "String",
  "name": "String",
  "given_name": "String",
  "family_name": "String",
  "email": "String",
  "email_verified": "String",
  "phone_number": "String",
  "phone_number_verified": "String",
  "address": {
    "@odata.type": "microsoft.graph.oidcAddressInboundClaims"
  }
}
```
