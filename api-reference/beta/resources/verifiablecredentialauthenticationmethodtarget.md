---
title: "verifiableCredentialAuthenticationMethodTarget resource type"
description: "A collection of groups enabled to use Verifiable Credential for identification."
author: "tilarso"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verifiableCredentialAuthenticationMethodTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups enabled to use Verifiable Credential for identification. 

Inherits from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| Object identifier of a Microsoft Entra user or group. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isRegistrationRequired|Boolean|Indicates whether the user is required to register the authentication method. Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).|
|targetType|authenticationMethodTargetType| The authentication method type. Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md). The possible values are: `user`, `group`, `unknownFutureValue`, `role`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `role`.|
|verifiedIdProfiles|Guid collection| A collection of Verified ID profiles. 

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.verifiableCredentialAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiableCredentialAuthenticationMethodTarget",
  "id": "String (identifier)",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "verifiedIdProfiles": [
    "Guid"
  ]
}
```

