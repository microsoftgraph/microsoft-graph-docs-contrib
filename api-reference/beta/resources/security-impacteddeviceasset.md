---
title: "impactedDeviceAsset resource type (deprecated)"
description: "Represents a device that was identified in an alert triggered by a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# impactedDeviceAsset resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **impactedDeviceAsset** resource type is deprecated and will be removed on 2026-10-01. Use [entityMapping](../resources/security-entitymapping.md) and its derived types via `alertTemplate.entityMappings` instead. See the [custom detection rule](../resources/security-detectionrule.md) topic for the new shape.

Represents a device that was identified in an alert triggered by a [custom detection rule](../resources/security-detectionrule.md).

Inherits from [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md).

## Properties
| Property   | Type                                                                                                          | Description                                                                                                                                                                                |
|:-----------|:--------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.deviceAssetIdentifier](../resources/enums-security.md#deviceassetidentifier-values) | Unique identifier for the impacted device asset. The possible values are: `deviceId`, `deviceName`, `remoteDeviceName`, `targetDeviceName`, `destinationDeviceName`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.impactedDeviceAsset"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.impactedDeviceAsset",
  "identifier": "String"
}
```

