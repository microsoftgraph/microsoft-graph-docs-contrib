---
title: "teamworkDevice resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDevices](../api/teamworkdevice-list.md)|[teamworkDevice](../resources/teamworkdevice.md) collection|Get a list of the [teamworkDevice](../resources/teamworkdevice.md) objects and their properties.|
|[Create teamworkDevice](../api/teamwork-post-devices.md)|[teamworkDevice](../resources/teamworkdevice.md)|Create a new [teamworkDevice](../resources/teamworkdevice.md) object.|
|[Get teamworkDevice](../api/teamworkdevice-get.md)|[teamworkDevice](../resources/teamworkdevice.md)|Read the properties and relationships of a [teamworkDevice](../resources/teamworkdevice.md) object.|
|[Update teamworkDevice](../api/teamworkdevice-update.md)|[teamworkDevice](../resources/teamworkdevice.md)|Update the properties of a [teamworkDevice](../resources/teamworkdevice.md) object.|
|[Delete teamworkDevice](../api/teamworkdevice-delete.md)|None|Deletes a [teamworkDevice](../resources/teamworkdevice.md) object.|
|[restart](../api/teamworkdevice-restart.md)|None|**TODO: Add Description**|
|[runDiagnostics](../api/teamworkdevice-rundiagnostics.md)|None|**TODO: Add Description**|
|[updateSoftware](../api/teamworkdevice-updatesoftware.md)|None|**TODO: Add Description**|
|[List teamworkDeviceActivity](../api/teamworkdevice-list-activity.md)|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md) collection|Get the teamworkDeviceActivity resources from the activity navigation property.|
|[Create teamworkDeviceActivity](../api/teamworkdevice-post-activity.md)|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|Create a new teamworkDeviceActivity object.|
|[List teamworkDeviceConfiguration](../api/teamworkdevice-list-configuration.md)|[teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md) collection|Get the teamworkDeviceConfiguration resources from the configuration navigation property.|
|[Create teamworkDeviceConfiguration](../api/teamworkdevice-post-configuration.md)|[teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md)|Create a new teamworkDeviceConfiguration object.|
|[List teamworkDeviceHealth](../api/teamworkdevice-list-health.md)|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md) collection|Get the teamworkDeviceHealth resources from the health navigation property.|
|[Create teamworkDeviceHealth](../api/teamworkdevice-post-health.md)|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|Create a new teamworkDeviceHealth object.|
|[List operations](../api/teamworkdevice-list-operations.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|Get the teamworkDeviceOperation resources from the operations navigation property.|
|[Create teamworkDeviceOperation](../api/teamworkdevice-post-operations.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Create a new teamworkDeviceOperation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityState|teamworkDeviceActivityState|**TODO: Add Description**. The possible values are: `unknown`, `busy`, `idle`, `unavailable`, `unknownFutureValue`.|
|companyAssetTag|String|**TODO: Add Description**|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|currentUser|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|**TODO: Add Description**|
|deviceType|teamworkDeviceType|**TODO: Add Description**. The possible values are: `unknown`, `ipPhone`, `teamsRoom`, `surfaceHub`, `collaborationBar`, `teamsDisplay`, `touchConsole`, `lowCostPhone`, `teamsPanel`, `sip`, `unknownFutureValue`.|
|hardwareDetail|[teamworkHardwareDetail](../resources/teamworkhardwaredetail.md)|**TODO: Add Description**|
|healthStatus|teamworkDeviceHealthStatus|**TODO: Add Description**. The possible values are: `unknown`, `offline`, `critical`, `nonUrgent`, `healthy`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activity|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|**TODO: Add Description**|
|configuration|[teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md)|**TODO: Add Description**|
|health|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|**TODO: Add Description**|
|operations|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkDevice",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDevice",
  "id": "String (identifier)",
  "deviceType": "String",
  "hardwareDetail": {
    "@odata.type": "microsoft.graph.teamworkHardwareDetail"
  },
  "notes": "String",
  "companyAssetTag": "String",
  "healthStatus": "String",
  "activityState": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "currentUser": {
    "@odata.type": "microsoft.graph.teamworkUserIdentity"
  }
}
```

