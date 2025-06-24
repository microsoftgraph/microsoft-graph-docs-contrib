---
title: "account of the identity resource type"
description: "Provides details of the identity's account."
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# Account resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details of an [identity's account](../resources/security-identityaccounts.md).

## Properties
|Property| Type                                                                                                     | Description                 |
|:---|:---------------------------------------------------------------------------------------------------------|:----------------------------|
|actions| microsoft.graph.security.action collection                                                               | List of the type of action. The possible values are: `disable`, `enable`, `forcePasswordReset`, `revokeAllSessions`, `requireUserToSignInAgain`, `markUserAsCompromised`, `unknownFutureValue`.|
|identifier| String                                                                                                   | The account ID.             |
|identityProvider| microsoft.graph.security.identityProvider                                                                | The identity provider. The possible values are: `entraID`, `activeDirectory`, `okta`, `unknownFutureValue`.     |

| Action Value             | Description                                                                                                                          |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| Disable                  | Disable account. The account isn't able to authenticate. If the account has recently logged in, it doesn't have access to resources. |
| Enable                   | Enable account.                                                                                                                      |
| ForcePasswordReset       | Force password reset of the account.                                                                                                 |
| RevokeAllSessions        | Revoke all of active sessions for the account.                                                                                       |
| RequireUserToSignInAgain | Require the user to sign in again.                                                                                                   |
| MarkUserAsCompromised    | Mark the user as compromised.                                                                                                        |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.account"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.account",
  "identifier": "String",
  "identityProvider": "String",
  "actions": [
    "String"
  ]
}
```
