---
title: "customUsernameSignInIdentifier resource type"
description: "Represents a custom username sign-in identifier that allows users to authenticate with custom patterns like account numbers, member IDs, or employee identifiers."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
toc.title: Custom username sign-in identifier
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# customUsernameSignInIdentifier resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom username sign-in identifier that enables users to authenticate using custom patterns such as account numbers, member IDs, or employee identifiers. This resource allows tenant administrators to define validation patterns using regular expressions to ensure custom usernames follow specific formats required by their organization.


Inherits from [signInIdentifierBase](../resources/signinidentifierbase.md).


## Methods

None.

For the list of API operations for managing this resource type, see the [signInIdentifierBase](../resources/signInIdentifierBase.md) resource type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether this custom username sign-in identifier type is enabled for user authentication in the tenant. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md).|
|name|String|The unique name identifier for this custom username sign-in identifier configuration. Possible values include: `CustomUsername1`, `CustomUsername2`. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md).|
|validationRegex|String|The regular expression pattern used to validate custom usernames. The pattern must be a valid regex, can't exceed 60 characters in length, and can't be an email-supported regex pattern.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customUsernameSignInIdentifier",
  "baseType": "microsoft.graph.signInIdentifierBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customUsernameSignInIdentifier",
  "name": "String (identifier)",
  "isEnabled": "Boolean",
  "validationRegex": "String"
}
```
