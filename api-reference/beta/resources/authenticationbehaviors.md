---
title: "authenticationBehaviors resource type"
description: ""
author: "medhir"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationBehaviors resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the Authentication Behaviors set in the context of an application. Authentication Behaviors provide applications flexibility in adopting breaking-change behaviors related to token issuance. These updated token issuance behaviors can be related to security mitigations, security improvements, or feature deprecations. 

Applications can adopt new breaking changes by enabling a behavior, or continue using pre-existing behavior by disabling it. It should be noted that certain behaviors are not modifiable for an application in the interest of Microsoft maintaining a strong security posture. 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|removeUnverifiedEmailClaim|Boolean|**TODO: Add Description**|
|requireClientServicePrincipal|Boolean| Requires a client application attempting to acquire a cross-tenant token from a resource application to have a Service Principal as a pre-requisite. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationBehaviors"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationBehaviors",
  "removeUnverifiedEmailClaim": "Boolean",
  "requireClientServicePrincipal": "Boolean"
}
```
