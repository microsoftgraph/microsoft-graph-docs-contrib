---
title: "strongAuthenticationRequirements resource type"
description: "Captures settings relating to per-user Microsoft Entra multifactor authentication."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# strongAuthenticationRequirements resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Captures settings relating to per-user Microsoft Entra multifactor authentication.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|perUserMfaState|perUserMfaState|Sets the per-user MFA state for the user. The possible values are: `disabled`, `enforced`, `enabled`, `unknownFutureValue`. When you update a user's MFA state to `enabled` and the user has already registered an MFA method, their state changes automatically to `enforced`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.strongAuthenticationRequirements"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.strongAuthenticationRequirements",
  "perUserMfaState": "String"
}
```
