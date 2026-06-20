---
title: "stopAndQuarantineFileResponseAction resource type (deprecated)"
description: "Describes response action that moves the file from its current location to quarantine."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# stopAndQuarantineFileResponseAction resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **stopAndQuarantineFileResponseAction** resource type is deprecated and will be removed on October 1, 2026. Use [automatedAction](../resources/security-automatedaction.md) (grouped via [automatedActionSet](../resources/security-automatedactionset.md)) on the [detectionAction](../resources/security-detectionaction.md) resource instead.

Describes response action that moves the file from its current location to quarantine.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                                                          | Description                                                                                                                            |
|:-----------|:----------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.stopAndQuarantineFileEntityIdentifier](../resources/enums-security.md#stopandquarantinefileentityidentifier-values) | Unique identifier for the response action. The possible values are: `deviceId`, `sha1`, `initiatingProcessSHA1`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.stopAndQuarantineFileResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.stopAndQuarantineFileResponseAction",
  "identifier": "String"
}
```

