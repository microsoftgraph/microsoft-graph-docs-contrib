---
title: "webFilteringAction resource type"
description: "Represents the action to apply when a web filtering rule matches traffic."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringAction resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the action to apply when a web filtering rule matches traffic. This is an abstract type that can't be instantiated directly.

The following types derive from this resource:

- [webFilteringActionAllow](../resources/networkaccess-webfilteringactionallow.md)
- [webFilteringActionBlock](../resources/networkaccess-webfilteringactionblock.md)

Instances are differentiated by the `@odata.type` property.

This type is used by the **action** property of [webFilteringRule](../resources/networkaccess-webfilteringrule.md) and the **defaultAction** property of [webFilteringPolicySettings](../resources/networkaccess-webfilteringpolicysettings.md).

## Methods
None.

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringAction"
}
```
