---
title: "account resource type"
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
|actions| microsoft.graph.security.action collection                                                               | List of the type of action. |
|identifier| String                                                                                                   | The account ID.             |
|identityProvider| microsoft.graph.security.identityProvider                                                                | The identity provider.      |

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
