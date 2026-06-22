---
title: "softDeleteResponseAction resource type (deprecated)"
description: "Describes the soft delete response action, which moves the email message to a Deleted folder in the cloud but doesn't delete the email message permanently."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# softDeleteResponseAction resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **softDeleteResponseAction** resource type is deprecated and will be removed on October 1, 2026. Use [automatedAction](../resources/security-automatedaction.md) (grouped via [automatedActionSet](../resources/security-automatedactionset.md)) on the [detectionAction](../resources/security-detectionaction.md) resource instead.

Describes the soft delete response action, which moves the email message to a Deleted folder in the cloud but doesn't delete the email message permanently. Only administrators can perform this response action.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                          | Description                                                                                                                                                                                   |
|:-----------|:--------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.emailEntityIdentifier](../resources/enums-security.md#emailentityidentifier-values) | Unique identifier for the response action. Default is `networkMessageId`,`recipientEmailAddress`. The possible values are: `networkMessageId`, `recipientEmailAddress`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.softDeleteResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.softDeleteResponseAction",
  "identifier": "String"
}
```

