---
title: "smsAuthenticationMethodTarget resource type"
description: "A collection of groups enabled to use Text Message authentication methods policy."
author: "luc-msft"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# smsAuthenticationMethodTarget resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups enabled to use [Text Message authentication methods policy](../resources/smsAuthenticationMethodConfiguration.md) in Microsoft Entra ID.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object ID of a Microsoft Entra user or group.|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method. **Not supported**.|
|isUsableForSignIn|Boolean|Determines if users can use this authentication method to sign in to Microsoft Entra ID. `true` if users can use this method for primary authentication, otherwise `false`.|
|targetType|authenticationMethodTargetType|Possible values are: `group`, and `unknownFutureValue`. From December 2022, targeting individual users using `user` is no longer recommended. Existing targets remain but we recommend moving the individual users to a targeted group. Inherited from [authenticationMethodTarget](authenticationMethodTarget.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.smsAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.smsAuthenticationMethodTarget",
  "targetType": "String",
  "id": "String (identifier)",
  "isRegistrationRequired": "Boolean",
  "isUsableForSignIn": "Boolean"
}
```
