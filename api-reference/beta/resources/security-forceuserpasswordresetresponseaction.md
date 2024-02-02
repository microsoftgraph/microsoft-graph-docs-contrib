---
title: "forceUserPasswordResetResponseAction resource type"
description: "Describes a response action that prompts the user to change their password the next time they sign in."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# forceUserPasswordResetResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a response action that prompts the user to change their password the next time they sign in.


Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                                                            | Description                                                                                                                                                              |
|:-----------|:------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.forceUserPasswordResetEntityIdentifier](../resources/enums-security.md#forceuserpasswordresetentityidentifier-values) | Unique identifier for the response action. The possible values are: `accountSid`, `initiatingProcessAccountSid`, `requestAccountSid`, `onPremSid`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.forceUserPasswordResetResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.forceUserPasswordResetResponseAction",
  "identifier": "String"
}
```

