---
title: "webFilteringActionBlock resource type"
description: "Represents an action that blocks web traffic when a web filtering rule matches."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringActionBlock resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action that blocks web traffic when a [webFilteringRule](../resources/networkaccess-webfilteringrule.md) matches.

Inherits from [microsoft.graph.networkaccess.webFilteringAction](../resources/networkaccess-webfilteringaction.md).

Instances of this type can be used by the **action** property of [webFilteringRule](../resources/networkaccess-webfilteringrule.md) and the **defaultAction** property of [webFilteringPolicySettings](../resources/networkaccess-webfilteringpolicysettings.md), both of which have type [webFilteringAction](../resources/networkaccess-webfilteringaction.md).

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
  "@odata.type": "microsoft.graph.networkaccess.webFilteringActionBlock"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringActionBlock"
}
```
