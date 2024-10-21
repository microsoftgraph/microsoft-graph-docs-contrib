---
title: "inboundClaimMapping resource type"
description: "Map the claims from a token to the claims that Microsoft Entra External ID recognizes and uses."
author: "amir-shenouda"
ms.localizationpriority: high
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# inboundClaimMapping resource type

Namespace: microsoft.graph

After the custom identity provider sends an ID token back to Microsoft Entra External ID, Microsoft Entra External ID maps the claims from a token to the claims that Microsoft Entra External ID recognizes and uses.

In OpenID Connect protocol, claims are used to communicate information about the end user and contains pieces of information about a user that an identity provider states inside the ID token they issue for that user. The ID Token is a security token that contains claims about the end-user. These ID token claims are used to uniquely identify and provide information about the user during sign-up. These information pieces are stored in the corresponding user attributes in the user's profile in your directory.
You can configure the standard OpenID Connect (OIDC) claims with the claims your identity provider provides in the ID Token.

## Properties
|Property|User flow attribute|Type|Description|
|:-------|-----|:---|:----------|
|sub|N/A|String|Subject - Identifier for the end-user at the Issuer.|
|name|Display Name|String|End-user's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the end-user's locale and preferences.|
|given_name|First Name |String|Given name(s) or first name(s) of the end-user.|
|family_name|Last Name |String|Surname(s) or family name of the end-user.|
|email|Email|String|End-user's preferred e-mail address. Its value MUST conform to the RFC 5322 [RFC5322] addr-spec syntax.|
|email_verified|N/A|boolean|True if the end-user's e-mail address has been verified; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to ensure that this e-mail address was controlled by the end-user at the time the verification was performed. If this claim value is false, the user is asked to verify email during sign-up if email is required in the user flow.|
|phone_number||String|The claim provides the phone number for the user.|
|phone_number_verified|N/A|boolean|True if the end-user's phone number has been verified; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to verify the phone number.|
|address| |[address](inboundclaimmapping-address.md)|End-user's preferred postal address. The value of the address member is a JSON [RFC8259] structure containing some or all of the members defined below|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.claimsMapping"
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


