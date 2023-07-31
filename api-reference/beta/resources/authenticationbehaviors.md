---
title: "authenticationBehaviors resource type"
description: "Authentication behaviors provide applications flexibility in adopting breaking-change behaviors related to token issuance."
author: "medhir"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationBehaviors resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the authentication behaviors set in the context of an [application](application.md). Authentication behaviors are boolean flags that provide applications flexibility in adopting breaking-change behaviors related to token issuance. These updated token issuance behaviors can be related to security mitigations, security improvements, or feature deprecations.

Applications can adopt new breaking changes by enabling a behavior (set the behavior to `true`), or continue using pre-existing behavior by disabling it (by setting the behavior to `false`). For more information about managing authentication behaviors, see [Manage application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization](/graph/applications-authenticationbehaviors).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|removeUnverifiedEmailClaim|Boolean| Removes the `email` claim from tokens sent to an application when the email address's domain cannot be verified. |

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
  "removeUnverifiedEmailClaim": "Boolean"
}
```
