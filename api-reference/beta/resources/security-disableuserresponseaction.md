---
title: "disableUserResponseAction resource type"
description: "Describes a 'Disable User' response action"
author: "mmekler"
ms.prod: "security"
doc_type: resourcePageType
---

# disableUserResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a 'Disable User' response action.
Temporarily prevents a user from logging in to the on-premises.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                                      | Description                                                                                                                                                              |
|:-----------|:--------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.disableUserEntityIdentifier](../resources/enums-security.md#disableUserEntityIdentifier-values) | Unique identifier for the response action. The possible values are: `accountSid`, `initiatingProcessAccountSid`, `requestAccountSid`, `onPremSid`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.disableUserResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.disableUserResponseAction",
  "identifier": "String"
}
```

