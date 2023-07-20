---
title: "stopAndQuarantineFileResponseAction resource type"
description: "Describes a 'Stop and Quarantine File' response action"
author: "mmekler"
ms.localizationpriority: medium
ROBOTS: NOINDEX
ms.prod: "security"
doc_type: resourcePageType
---

# stopAndQuarantineFileResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a 'Stop and Quarantine File' response action.
Deletes the file from its current location and places a copy in.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                                                          | Description                                                                                                                            |
|:-----------|:----------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.stopAndQuarantineFileEntityIdentifier](../resources/enums-security.md#stopandquarantinefileentityidentifier-values) | Unique identifier for the response action. The possible values are: `deviceId`, `sha1`, `initiatingProcessSHA1`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

