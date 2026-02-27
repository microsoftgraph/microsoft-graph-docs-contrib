---
title: "passkeyAuthenticationMethodTarget resource type"
description: "A collection of groups that are enabled to use an FIDO2 authentication method as part of a FIDO2 authentication method policy."
author: "kimhana"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/24/2024
---

# passkeyAuthenticationMethodTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups that are enabled to use a passkey (FIDO2) authentication method as part of a passkey (FIDO2) authentication method policy in Microsoft Entra ID. Inherits from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object identifier of a Microsoft Entra user or group. Required.|
|isRegistrationRequired|Boolean|Indicates whether the user is required to register the authentication method. Required.|
|targetType|authenticationMethodTargetType| The authentication method type. The possible values are: `group` and `unknownFutureValue`. Effective December 2022, the `user` target value is no longer recommended. We recommend moving individual users to a targeted group. Required.|
|allowedPasskeyProfiles|Guid collection|List of passkey profiles scoped to the targets. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passkeyAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passkeyAuthenticationMethodTarget",
  "id": "String",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "allowedPasskeyProfiles": [
    "Guid"
  ]
}
```
