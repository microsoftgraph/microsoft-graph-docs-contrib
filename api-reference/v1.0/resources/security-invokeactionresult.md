---
title: "invokeActionResult resource type"
description: "The invoke action result"
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# invokeActionResult resource type

Namespace: microsoft.graph.security

Represents the invoke action result after [disabling an identity account](../api/security-identityaccounts-invokeaction.md).

## Properties
|Property| Type                                                                                  | Description                                                                                                                                                                             |
|:---|:--------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|accountId| String                                                                                | The account ID.                                                                                                                                                                         |
|action| microsoft.graph.security.action                                                       | The type of action. The possible values are: `disable`, `enable`, `forcePasswordReset`, `revokeAllSessions`, `requireUserToSignInAgain`, `markUserAsCompromised`, `unknownFutureValue`. |
|correlationId| String                                                                                | The unique identifier for tracking the request.                                                                                                                                         |
|identityProvider| microsoft.graph.security.identityProvider                                             | The identity provider type. The possible values are: `entraID`, `activeDirectory`, `okta`, `unknownFutureValue`.                                                                        |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.invokeActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.invokeActionResult",
  "accountId": "String",
  "action": "String",
  "identityProvider": "String",
  "correlationId": "String"
}
```