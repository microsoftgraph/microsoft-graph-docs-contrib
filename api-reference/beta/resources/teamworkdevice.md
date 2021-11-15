---
title: "teamworkDevice resource type"
description: "A Teams device details."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of a Microsoft Teams device.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDevices](../api/teamworkdevice-list.md)|[teamworkDevice](../resources/teamworkdevice.md) collection|Get a list of the [teamworkDevice](../resources/teamworkdevice.md) objects and their properties.|
|[Get teamworkDevice](../api/teamworkdevice-get.md)|[teamworkDevice](../resources/teamworkdevice.md)|Read the properties and relationships of a [teamworkDevice](../resources/teamworkdevice.md) object.|
|[Restart teamworkDevice](../api/teamworkdevice-restart.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Restart a device.|
|[RunDiagnostics](../api/teamworkdevice-rundiagnostics.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Run device diagnostics to get device log details.|
|[UpdateSoftware](../api/teamworkdevice-updatesoftware.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Update software version.|
|[List operations](../api/teamworkdevice-list-operations.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|Get the teamworkDeviceOperation resources from the operations navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityState|teamworkDeviceActivityState|Device activity state. The possible values are: `unknown`, `busy`, `idle`, `unavailable`, `unknownFutureValue`.|
|companyAssetTag|String|Company asset tag assigned by admin on device.|
|createdBy|[identitySet](../resources/identityset.md)|CreatedBy.|
|createdDateTime|DateTimeOffset|Document create time.|
|currentUser|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|Logged in user on the device.|
|deviceType|teamworkDeviceType|Type of device. The possible values are: `unknown`, `ipPhone`, `teamsRoom`, `surfaceHub`, `collaborationBar`, `teamsDisplay`, `touchConsole`, `lowCostPhone`, `teamsPanel`, `sip`, `unknownFutureValue`.|
|hardwareDetail|[teamworkHardwareDetail](../resources/teamworkhardwaredetail.md)|Hardware related properties are captured in it. For example: oemSerialNumber, model.|
|healthStatus|teamworkDeviceHealthStatus|Device health status. The possible values are: `unknown`, `offline`, `critical`, `nonUrgent`, `healthy`, `unknownFutureValue`.|
|id|String|Device identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Last modifiedby.|
|lastModifiedDateTime|DateTimeOffset|Last modified time.|
|notes|String|Notes put by admin on device.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activity|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|Holds properties which changes based on device activity.|
|configuration|[teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md)|DeviceConfiguration which consist device configuration properties.|
|health|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|DeviceHealth which consist device health properties.|
|operations|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|DeviceOperation which consists of device asyn operations.|

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

