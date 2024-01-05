---
title: "isolateDeviceResponseAction resource type"
description: "Describes a response action that uses Microsoft Defender to apply full network isolation to a device."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# isolateDeviceResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a response action that uses Microsoft Defender to apply full network isolation to a device.
This response action prevents the device from connecting to any application or service.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property      | Type                                                                                                                | Description                                                                                                                  |
|:--------------|:--------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| identifier    | [microsoft.graph.security.deviceIdEntityIdentifier](../resources/enums-security.md#deviceidentityidentifier-values) | Unique identifier for the response action. Default is `deviceId`. The possible values are: `deviceId`, `unknownFutureValue`. |
| isolationType | [microsoft.graph.security.isolationType](../resources/enums-security.md#isolationtype-values)                       | For the isolated device, the type of isolation applied. The possible values are: `full`, `selective`, `unknownFutureValue`.  |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.isolateDeviceResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.isolateDeviceResponseAction",
  "identifier": "String",
  "isolationType": "String"
}
```

