---
title: "teamworkDeviceActivity resource type"
description: "Device activity details."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details related to device activity. Has information regarding the active peripherals attached to the device.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get teamworkDeviceActivity](../api/teamworkdeviceactivity-get.md)|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|Read the properties and relationships of a [teamworkDeviceActivity](../resources/teamworkdeviceactivity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activePeripherals|[teamworkActivePeripherals](../resources/teamworkactiveperipherals.md)|Active peripherals attached to device.|
|createdBy|[identitySet](../resources/intune-identityset.md)|CreatedBy.|
|createdDateTime|DateTimeOffset|Document create time.|
|id|String|Document identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|Last modifiedby.|
|lastModifiedDateTime|DateTimeOffset|Last modified time.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkDeviceActivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDeviceActivity",
  "id": "String (identifier)",
  "activePeripherals": {
    "@odata.type": "microsoft.graph.teamworkActivePeripherals"
  },
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

