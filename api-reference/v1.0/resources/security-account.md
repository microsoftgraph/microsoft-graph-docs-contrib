---
title: "account resource type (details of an identity account)"
description: "Provides details of the identity's account."
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# account resource type (details of an identity account)

Namespace: microsoft.graph.security

Provides details of an [identity's account](../resources/security-identityaccounts.md).

## Properties
|Property| Type                                                                                                     | Description                                                                                                                                                              |
|:---|:---------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|actions| microsoft.graph.security.action collection                                                               | List of the type of action. The possible values are: `disable`, `enable`, `forcePasswordReset`, `revokeAllSessions`, `requireUserToSignInAgain`, `markUserAsCompromised`, `unknownFutureValue`.|
|identifier| String                                                                                                   | The account ID.                                                                                                                                                          |
|identityProvider| microsoft.graph.security.identityProvider                                                                | The identity provider. The possible values are: `entraID`, `activeDirectory`, `okta`, `unknownFutureValue`.                                                                                    |

| Action Value             | Description                                                                                                                          | Supported identity providers   |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|
| Disable                  | Disable account. The account is unable to authenticate. If the account recently logged in, it doesn't have access to resources. | `activeDirectory`, `entraID`, `okta` |
| Enable                   | Enable account.                                                                                                                      | `activeDirectory`, `entraID`, `okta` |
| ForcePasswordReset       | Force password reset of the account.                                                                                                 | `activeDirectory`                |
| RevokeAllSessions        | Revoke all of active sessions for the account.                                                                                       | `entraID`, `okta`                  |
| RequireUserToSignInAgain | Require the user to sign in again.                                                                                                   | `entraID`                        |
| MarkUserAsCompromised    | Mark the user as compromised.                                                                                                        | `entraID`                        |

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
