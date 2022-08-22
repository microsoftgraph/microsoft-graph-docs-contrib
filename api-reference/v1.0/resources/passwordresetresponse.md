---
title: "passwordResetResponse resource type"
description: "Represents the new system-generated password after a password reset operation."
author: "zhvolosh"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# passwordResetResponse resource type

Namespace: microsoft.graph

Represents the new system-generated password after a [password reset operation](../api/authenticationmethod-resetpassword.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|newPassword|String|The Azure AD-generated password.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.passwordResetResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordResetResponse",
  "newPassword": "String"
}
```