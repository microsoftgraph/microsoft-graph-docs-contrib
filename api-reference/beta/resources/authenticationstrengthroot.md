---
title: "authenticationStrengthRoot resource type"
description: "Root node of authentication strengths"
ms.localizationpriority: medium
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationStrengthRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **authenticationStrengthRoot** resource is the entry point for the authentication strengths object model. It doesn't contain any usable properties and cannot be queried directly.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationCombinations|authenticationMethodModes collection|A collection of **authenticationMethodModes** values representing all valid authentication method combinations in the system.|
|id|String|A system-generated GUID. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authenticationMethodModes|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) collection|Names and descriptions of all valid authentication method modes in the system.|
|policies|[authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) collection|A collection of [authentication strength policies](authenticationStrengthPolicy.md) that exist for this tenant, including both built-in and custom policies.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationStrengthRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationStrengthRoot",
  "id": "61f4b2e6-dbf9-4d9a-a5c8-e4dfeec578a5",
  "authenticationCombinations": [
        {
            "id" : "password",
            "displayName" : "Password",
            "authenticationMethod" : "password"
        },
        {
            "id" : "voice",
            "displayName" : "Voice",
            "authenticationMethod" : "voice"
        },

        {
            "id" : "softwareOath",
            "displayName" : "Software OATH tokens",
            "authenticationMethod" : "softwareOath"
        },
        {
            "id" : "sms",
            "displayName" : "SMS",
            "authenticationMethod" : "sms"
        },
        {
            "id" : "fido2",
            "displayName" : "FIDO2 Security Key",
            "authenticationMethod" : "fido2"
        },
        {
            "id" : "windowsHelloForBusiness",
            "displayName" : "Windows Hello for Business",
            "authenticationMethod" : "windowsHelloForBusiness"
        },
        {
            "id" : "microsoftAuthenticatorPush",
            "displayName" : "Microsoft Authenticator (push notification)",
            "authenticationMethod" : "microsoftAuthenticator"
        },
        {
            "id" : "deviceBasedPush",
            "displayName" : "Microsoft Authenticator (Passwordless)",
            "authenticationMethod" : "microsoftAuthenticator"
        },
        {
            "id" : "temporaryAccessPassOneTime",
            "displayName" : "Temporary Access Pass (one-time use)",
            "authenticationMethod" : "temporaryAccessPass"
        },
        {
            "id" : "temporaryAccessPassMultiUse",
            "displayName" : "Temporary Access Pass (multi-use)",
            "authenticationMethod" : "temporaryAccessPass"
        },
        {
            "id" : "email",
            "displayName" : "Email one-time passcode",
            "authenticationMethod" : "email"
        },
        {
            "id" : "x509CertificateSingleFactor",
            "displayName" : "Certificate-based authentication (single-factor)",
            "authenticationMethod" : "x509Certificate"
        },
        {
            "id" : "federatedMultiFactor",
            "displayName" : "Federation (multi-factor)",
            "authenticationMethod" : "federation"
        },
        {
            "id" : "federatedSingleFactor",
            "displayName" : "Federation (single-factor)",
            "authenticationMethod" : "federation"
        },
        {
            "id" : "x509CertificateMultiFactor",
            "displayName" : "Certificate-based authentication (multi-factor)",
            "authenticationMethod" : "x509Certificate"
        }
  ]
}
```

