---
title: "teamworkDeviceHealth resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkDeviceHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDeviceHealths](../api/teamworkdevicehealth-list.md)|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md) collection|Get a list of the [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) objects and their properties.|
|[Create teamworkDeviceHealth](../api/teamworkdevice-post-health.md)|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|Create a new [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object.|
|[Get teamworkDeviceHealth](../api/teamworkdevicehealth-get.md)|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|Read the properties and relationships of a [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object.|
|[Update teamworkDeviceHealth](../api/teamworkdevicehealth-update.md)|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|Update the properties of a [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object.|
|[Delete teamworkDeviceHealth](../api/teamworkdevicehealth-delete.md)|None|Deletes a [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connection|[teamworkConnection](../resources/teamworkconnection.md)|**TODO: Add Description**|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|hardwareHealth|[teamworkHardwareHealth](../resources/teamworkhardwarehealth.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|loginStatus|[teamworkLoginStatus](../resources/teamworkloginstatus.md)|**TODO: Add Description**|
|peripheralsHealth|[teamworkPeripheralsHealth](../resources/teamworkperipheralshealth.md)|**TODO: Add Description**|
|softwareUpdateHealth|[teamworkSoftwareUpdateHealth](../resources/teamworksoftwareupdatehealth.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkDeviceHealth",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDeviceHealth",
  "id": "String (identifier)",
  "connection": {
    "@odata.type": "microsoft.graph.teamworkConnection"
  },
  "loginStatus": {
    "@odata.type": "microsoft.graph.teamworkLoginStatus"
  },
  "peripheralsHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralsHealth"
  },
  "softwareUpdateHealth": {
    "@odata.type": "microsoft.graph.teamworkSoftwareUpdateHealth"
  },
  "hardwareHealth": {
    "@odata.type": "microsoft.graph.teamworkHardwareHealth"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```

