---
title: "impactedDeviceAsset resource type"
description: "Describes an asset of a device type that was impacted based on the alert triggered by the custom detection rule"
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# impactedDeviceAsset resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an asset of a device type that was impacted based on the alert triggered by a [Custom Detection Rule](../resources/security-detectionrule.md).

Inherits from [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md).

## Properties
| Property   | Type                                                                                                          | Description                                                                                                                                                                                |
|:-----------|:--------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.deviceAssetIdentifier](../resources/enums-security.md#deviceassetidentifier-values) | Unique identifier for the impacted device asset. The possible values are: `deviceId`, `deviceName`, `remoteDeviceName`, `targetDeviceName`, `destinationDeviceName`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

