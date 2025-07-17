---
title: "passwordResetResponse resource type"
description: "Represents the new system-generated password after a password reset operation."
author: "zhvolosh"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/06/2024
---

# passwordResetResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the new system-generated password after a [password reset operation](../api/authenticationmethod-resetpassword.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|newPassword|String|The Microsoft Entra ID-generated password.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
