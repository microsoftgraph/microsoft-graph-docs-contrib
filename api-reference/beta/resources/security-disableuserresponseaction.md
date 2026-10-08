---
title: "disableUserResponseAction resource type (deprecated)"
description: "Describes a response action that temporarily prevents a user from logging in to the on-premises network."
author: "mmekler"
ms.subservice: "security"
doc_type: resourcePageType
ms.localizationpriority: medium
ms.date: 03/06/2024
---

# disableUserResponseAction resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **disableUserResponseAction** resource type is deprecated and will be removed on October 1, 2026. Use [automatedAction](../resources/security-automatedaction.md) (grouped via [automatedActionSet](../resources/security-automatedactionset.md)) on the [detectionAction](../resources/security-detectionaction.md) resource instead.

Describes a response action that temporarily prevents a user from logging in to the on-premises network.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                                      | Description                                                                                                                                                              |
|:-----------|:--------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.disableUserEntityIdentifier](../resources/enums-security.md#disableuserentityidentifier-values) | Unique identifier for the response action. The possible values are: `accountSid`, `initiatingProcessAccountSid`, `requestAccountSid`, `onPremSid`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

