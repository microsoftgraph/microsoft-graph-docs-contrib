---
title: "signInPreferences resource type"
description: "A complex type that defines various settings and preferences related to a user's sign-in experience."
author: "msft-poulomi"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# signInPreferences resource type

Namespace: microsoft.graph.signInPreferences

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isSystemPreferredAuthenticationMethodEnabled|Boolean|Indicates whether the credential preferences of the system is enabled or not.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signInPreferences"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInPreferences",
  "isSystemPreferredAuthenticationMethodEnabled": "Boolean"
}
```
