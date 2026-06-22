---
title: "initiateInvestigationResponseAction resource type (deprecated)"
description: "Describes a response action that starts an automated investigation of a device."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# initiateInvestigationResponseAction resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **initiateInvestigationResponseAction** resource type is deprecated and will be removed on October 1, 2026. Use [automatedAction](../resources/security-automatedaction.md) (grouped via [automatedActionSet](../resources/security-automatedactionset.md)) on the [detectionAction](../resources/security-detectionaction.md) resource instead.

Describes a response action that starts an automated investigation of a device.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                                | Description                                                                                                                  |
|:-----------|:--------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.deviceIdEntityIdentifier](../resources/enums-security.md#deviceidentityidentifier-values) | Unique identifier for the response action. Default is `deviceId`. The possible values are: `deviceId`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.initiateInvestigationResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.initiateInvestigationResponseAction",
  "identifier": "String"
}
```

