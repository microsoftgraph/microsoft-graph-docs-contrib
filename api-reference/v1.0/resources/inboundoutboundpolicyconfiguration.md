---
title: "inboundOutboundPolicyConfiguration resource type"
description: "Defines the inbound and outbound rulesets for particular configurations within cross-tenant access settings."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# inboundOutboundPolicyConfiguration resource type

Namespace: microsoft.graph

Defines the inbound and outbound rulesets for particular configurations within cross-tenant access settings.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| inboundAllowed | Boolean | Defines whether external users coming inbound are allowed. |
| outboundAllowed | Boolean | Defines whether internal users are allowed to go outbound. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.inboundOutboundPolicyConfiguration",
  "inboundAllowed": {"@odata.type": "Boolean"},
  "outboundAllowed": {"@odata.type": "Boolean"}
}
```
