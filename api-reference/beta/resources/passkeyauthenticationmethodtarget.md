---
title: "passkeyAuthenticationMethodTarget resource type"
description: "A collection of groups that are enabled to use an FIDO2 authentication method as part of a FIDO2 authentication method policy."
author: "calvinlui"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# passkeyAuthenticationMethodTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups that are enabled to use a passkey (FIDO2) authentication method as part of a passkey (FIDO2) authentication method policy in Microsoft Entra ID. Inherits from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object identifier of a Microsoft Entra user or group.|
|isRegistrationRequired|Boolean|Determines if the user is enforced to register the authentication method.|
|targetType|authenticationMethodTargetType| Possible values are: `group`, and `unknownFutureValue`. From December 2022, targeting individual users using `user` is no longer recommended. Existing targets remain but we recommend moving the individual users to a targeted group.|

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
  "isRegistrationRequired": "Boolean"
}
```
