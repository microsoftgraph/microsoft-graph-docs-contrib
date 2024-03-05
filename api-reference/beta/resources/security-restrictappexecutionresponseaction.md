---
title: "restrictAppExecutionResponseAction resource type"
description: "Describes a response action that sets restrictions on device to allow only files that are signed with a Microsoft-issued certificate to run."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# restrictAppExecutionResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a response action that sets restrictions on device to allow only files that are signed with a Microsoft-issued certificate to run.

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
  "@odata.type": "microsoft.graph.security.restrictAppExecutionResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.restrictAppExecutionResponseAction",
  "identifier": "String"
}
```

