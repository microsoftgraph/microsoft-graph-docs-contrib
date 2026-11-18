---
title: "webFilteringPolicySettings resource type"
description: "Represents the default behavior for traffic that does not match a rule in a web filtering policy."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringPolicySettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the default behavior for traffic that does not match a rule in a [webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md).

This type is used by the **settings** property of [webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultAction|[microsoft.graph.networkaccess.webFilteringAction](../resources/networkaccess-webfilteringaction.md)|The action to apply to web traffic that does not match any rule in the policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringPolicySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicySettings",
  "defaultAction": {
    "@odata.type": "microsoft.graph.networkaccess.webFilteringAction"
  }
}
```
