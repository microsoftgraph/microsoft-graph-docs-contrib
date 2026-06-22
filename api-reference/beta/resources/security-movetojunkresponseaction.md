---
title: "moveToJunkResponseAction resource type (deprecated)"
description: "Describes an email response action that moves the email message to the user's Junk folder."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# moveToJunkResponseAction resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **moveToJunkResponseAction** resource type is deprecated and will be removed on October 1, 2026. Use [automatedAction](../resources/security-automatedaction.md) (grouped via [automatedActionSet](../resources/security-automatedactionset.md)) on the [detectionAction](../resources/security-detectionaction.md) resource instead.

Describes an email response action that moves the email message to the user's Junk folder.

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
  "@odata.type": "microsoft.graph.security.moveToJunkResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.moveToJunkResponseAction",
  "identifier": "String"
}
```

