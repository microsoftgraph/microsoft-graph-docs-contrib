---
title: "selfServiceSignUpAuthenticationFlowConfiguration resource type"
description: "Represents the configurations related to self-service sign-up."
author: "linkhp"
ms.localizationpriority: high
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# selfServiceSignUpAuthenticationFlowConfiguration resource type

Namespace: microsoft.graph

Represents the configurations related to self-service sign-up.

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|isEnabled|Boolean|Indicates whether self-service sign-up flow is enabled or disabled. The default value is `false`. This property isn't a key. Required. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
}
-->

``` json
{
  "isEnabled": "Boolean"
}
```
