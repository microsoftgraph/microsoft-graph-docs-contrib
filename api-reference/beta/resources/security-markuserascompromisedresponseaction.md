---
title: "markUserAsCompromisedResponseAction resource type"
description: "Describes a response action that sets the user's risk level to 'high' in Microsoft Entra ID."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# markUserAsCompromisedResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a response action that sets the user's risk level to "high" in Microsoft Entra ID.
This response action sets the user's risk level to `high` in Microsoft Entra ID, which triggers the identity protection policies for a `high` risk level.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                                                          | Description                                                                                                                                                                                 |
|:-----------|:----------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.markUserAsCompromisedEntityIdentifier](../resources/enums-security.md#markuserascompromisedentityidentifier-values) | Unique identifier for the response action. The possible values are: `accountObjectId`, `initiatingProcessAccountObjectId`, `servicePrincipalId`, `recipientObjectId`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

