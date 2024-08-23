---
title: "authenticationMethodTarget resource type"
description: "A collection of groups that are enabled to use an authentication method as part of an authentication method policy."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# authenticationMethodTarget resource type

Namespace: microsoft.graph

A collection of groups that are enabled to use an authentication method as part of an authentication method policy in Microsoft Entra ID.

The following types are derived from this resource type:
- [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)
- [smsAuthenticationMethodTarget](../resources/smsauthenticationmethodtarget.md)


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object Id of a Microsoft Entra user or group.|
|isRegistrationRequired|Boolean|Determines if the user is enforced to register the authentication method.|
|targetType|authenticationMethodTargetType|Possible values are: `user`, `group`.|

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
  "isRegistrationRequired": "Boolean",
  "targetType": "String"
}
```
