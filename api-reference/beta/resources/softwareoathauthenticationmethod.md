---
title: "softwareOathAuthenticationMethod resource type"
description: "A representation of a Software OATH token registered to a user. Software OATH is a multifactor authentication method."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# softwareOathAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a software OATH token registered to a user. A software OATH token is a software-based number generator that uses the OATH Time-Based One Time Password (TOTP) standard for multifactor authentication. This API won't return Microsoft Authenticator authentication method entities, though it returns an entity if Microsoft Authenticator was set up via the third-party software authenticator flow.

This is a derived type that inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authentication-list-softwareoathmethods.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) collection|Retrieve a list of a user's softwareOathAuthenticationMethod objects and their properties.|
|[Get](../api/softwareoathauthenticationmethod-get.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md)|Read the properties of a user's softwareOathAuthenticationMethod object.|
|[Delete](../api/softwareoathauthenticationmethod-delete.md)|None|Delete a user's softwareOathAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method identifier.|
|secretKey|String|The secret key of the method. Always returns `null`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.softwareOathAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethod",
  "id": "String (identifier)",
  "secretKey": "String"
}
```
