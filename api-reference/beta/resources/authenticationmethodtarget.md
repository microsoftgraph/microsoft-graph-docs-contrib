---
title: "authenticationMethodTarget resource type"
description: "A collection of groups that are enabled to use an authentication method as part of an authentication method policy."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/15/2024
---

# authenticationMethodTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups that are enabled to use an authentication method as part of an authentication method policy in Microsoft Entra ID. Inherits from [entity](entity.md).

The following types are derived from this resource type:
- [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)
- [smsAuthenticationMethodTarget](../resources/smsauthenticationmethodtarget.md)
- [voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md)
- [passkeyAuthenticationMethodTarget](../resources/passkeyauthenticationmethodtarget.md)

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
  "@odata.type": "microsoft.graph.authenticationMethodTarget",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodTarget",
  "id": "String (identifier)",
  "targetType": "String",
  "isRegistrationRequired": "Boolean"
}
```
