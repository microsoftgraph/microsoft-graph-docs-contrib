---
title: "authenticationMethodTarget resource type"
description: "A collection of groups that are enabled to use an authentication method as part of an authentication method policy."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationMethodTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups that are enabled to use an authentication method as part of an authentication method policy in Azure AD. Inherits from [entity](entity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object identifier of an Azure AD user or group.|
|isRegistrationRequired|Boolean|Determines if the user is enforced to register the authentication method.|
|targetType|authenticationMethodTargetType| Possible values are: `group`, and `unknownFutureValue`. From December 2022, targeting individual users using `user` is no longer recommended. Existing targets will remain but we recommend to move the individual users to a targeted group.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
