---
title: "softwareOathAuthenticationMethod resource type"
description: "A representation of a Software OATH token registered to a user. Software OATH is a multifactor authentication method."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Software OATH
ms.date: 07/19/2024
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
|createdDateTime|DateTimeOffset| The date and time the authentication method was registered to the user. Read-only. Optional. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastUsedDateTime|DateTimeOffset|The date and time the authentication method was last used by the user. Read-only. Optional. This optional value is `null` if the authentication method doesn't populate it. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
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
  "createdDateTime": "String (timestamp)",
  "lastUsedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "secretKey": "String"
}
```
