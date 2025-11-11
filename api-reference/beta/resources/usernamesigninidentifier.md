---
title: "usernameSignInIdentifier resource type"
description: "Represents a username sign-in identifier that enables users to authenticate using a simple username."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# usernameSignInIdentifier resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a username sign-in identifier that enables users to authenticate using a simple username. This is a built-in sign-in identifier that cannot be created or deleted, but can be enabled or disabled.

Inherits from [signInIdentifierBase](../resources/signinidentifierbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/usernamesigninidentifier-get.md)|[usernameSignInIdentifier](../resources/usernamesigninidentifier.md)|Read the properties and relationships of usernameSignInIdentifier object.|
|[Update](../api/usernamesigninidentifier-update.md)|[usernameSignInIdentifier](../resources/usernamesigninidentifier.md)|Update the properties of a usernameSignInIdentifier object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether this username sign-in identifier type is enabled for user authentication in the tenant. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md).|
|name|String|The unique name identifier for this username sign-in identifier configuration. Always set to "Username" for this identifier type. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.usernameSignInIdentifier",
  "baseType": "microsoft.graph.signInIdentifierBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.usernameSignInIdentifier",
  "name": "String (identifier)",
  "isEnabled": "Boolean"
}
```
