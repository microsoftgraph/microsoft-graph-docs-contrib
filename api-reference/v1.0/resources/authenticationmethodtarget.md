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

A collection of groups that are enabled to use an authentication method as part of an authentication method policy in Azure AD.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object Id of an Azure AD user or group.|
|isRegistrationRequired|Boolean|Determines if the user is enforced to register the authentication method.|
|targetType|authenticationMethodTargetType|Possible values are: `user`, `group`.|

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
  "isRegistrationRequired": "Boolean",
  "targetType": "String"
}
```
