---
title: "claimsMapping resource type"
description: ""
author: "namkedia"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# claimsMapping resource type


Namespace: microsoft.graph

Represents the configurations related to self-service sign up.

## Properties
|Property|Type|Description|
|:-------|:---|:----------|
|isEnabled|Boolean|Indicates whether self-service sign-up flow is enabled or disabled. The default value is `false`. This property is not a key. Required. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
