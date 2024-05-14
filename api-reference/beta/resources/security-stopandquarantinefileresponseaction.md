---
title: "stopAndQuarantineFileResponseAction resource type"
description: "Describes response action that moves the file from its current location to quarantine."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# stopAndQuarantineFileResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

