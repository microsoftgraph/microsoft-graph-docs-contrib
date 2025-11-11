---
title: "upnSignInIdentifier resource type"
description: "Represents a UPN (User Principal Name) sign-in identifier that enables users to authenticate using their User Principal Name."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# upnSignInIdentifier resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a UPN (User Principal Name) sign-in identifier that enables users to authenticate using their User Principal Name. This is a built-in sign-in identifier that cannot be created or deleted, but can be enabled or disabled.

Inherits from [signInIdentifierBase](../resources/signinidentifierbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/upnsigninidentifier-get.md)|[upnSignInIdentifier](../resources/upnsigninidentifier.md)|Read the properties and relationships of upnSignInIdentifier object.|
|[Update](../api/upnsigninidentifier-update.md)|[upnSignInIdentifier](../resources/upnsigninidentifier.md)|Update the properties of an upnSignInIdentifier object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether this UPN sign-in identifier type is enabled for user authentication in the tenant. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md).|
|name|String|The unique name identifier for this UPN sign-in identifier configuration. Always set to "UPN" for this identifier type. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.upnSignInIdentifier",
  "baseType": "microsoft.graph.signInIdentifierBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.upnSignInIdentifier",
  "name": "String (identifier)",
  "isEnabled": "Boolean"
}
```
