---
title: "emailSignInIdentifier resource type"
description: "Represents an email sign-in identifier that allows users to authenticate using their email address."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
toc.title: Email sign-in identifier
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# emailSignInIdentifier resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an email sign-in identifier that allows users to authenticate using their email address. This is a built-in sign-in identifier that can't be created or deleted, but can be enabled or disabled.

Inherits from [signInIdentifierBase](../resources/signinidentifierbase.md).

## Methods

None.

For the list of API operations for managing this resource type, see the [signInIdentifierBase](../resources/signInIdentifierBase.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether this email sign-in identifier type is enabled for user authentication in the tenant. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md).|
|name|String|The unique name identifier for this email sign-in identifier configuration. Always set to "Email" for this identifier type. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.emailSignInIdentifier",
  "baseType": "microsoft.graph.signInIdentifierBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailSignInIdentifier",
  "name": "String (identifier)",
  "isEnabled": "Boolean"
}
```
