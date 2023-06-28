---
title: "markUserAsCompromisedResponseAction resource type"
description: "Describes a 'Mark User As Compromised' response action"
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# markUserAsCompromisedResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a 'Mark User As Compromised' response action.
Sets the users risk level to "high" in Azure Active Directory, triggering corresponding identity protection policies.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                                                          | Description                                                                                                                                                                                 |
|:-----------|:----------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.markUserAsCompromisedEntityIdentifier](../resources/enums-security.md#markuserascompromisedentityidentifier-values) | Unique identifier for the response action. The possible values are: `accountObjectId`, `initiatingProcessAccountObjectId`, `servicePrincipalId`, `recipientObjectId`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.markUserAsCompromisedResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.markUserAsCompromisedResponseAction",
  "identifier": "String"
}
```

