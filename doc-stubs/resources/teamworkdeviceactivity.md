---
title: "teamworkDeviceActivity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkDeviceActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDeviceActivities](../api/teamworkdeviceactivity-list.md)|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md) collection|Get a list of the [teamworkDeviceActivity](../resources/teamworkdeviceactivity.md) objects and their properties.|
|[Create teamworkDeviceActivity](../api/teamworkdevice-post-activity.md)|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|Create a new [teamworkDeviceActivity](../resources/teamworkdeviceactivity.md) object.|
|[Get teamworkDeviceActivity](../api/teamworkdeviceactivity-get.md)|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|Read the properties and relationships of a [teamworkDeviceActivity](../resources/teamworkdeviceactivity.md) object.|
|[Update teamworkDeviceActivity](../api/teamworkdeviceactivity-update.md)|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|Update the properties of a [teamworkDeviceActivity](../resources/teamworkdeviceactivity.md) object.|
|[Delete teamworkDeviceActivity](../api/teamworkdeviceactivity-delete.md)|None|Deletes a [teamworkDeviceActivity](../resources/teamworkdeviceactivity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activePeripherals|[teamworkActivePeripherals](../resources/teamworkactiveperipherals.md)|**TODO: Add Description**|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

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

