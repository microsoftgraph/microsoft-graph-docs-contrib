---
title: "teamworkDevice resource type"
description: "Represents the details about a device in Microsoft Teams."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about a device in Microsoft Teams.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDevices](../api/teamworkdevice-list.md)|[teamworkDevice](../resources/teamworkdevice.md) collection|Get a list of the [teamworkDevice](../resources/teamworkdevice.md) objects and their properties.|
|[Get teamworkDevice](../api/teamworkdevice-get.md)|[teamworkDevice](../resources/teamworkdevice.md)|Read the properties and relationships of a [teamworkDevice](../resources/teamworkdevice.md) object.|
|[restart](../api/teamworkdevice-restart.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Restart a device.|
|[runDiagnostics](../api/teamworkdevice-rundiagnostics.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Run and generate diagnostic logs for the specified device.|
|[updateSoftware](../api/teamworkdevice-updatesoftware.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Update the software version for a [teamworkDevice](../resources/teamworkdevice.md).|
|[List operations](../api/teamworkdeviceoperation-list.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|Get the **teamworkDeviceOperation** resources from the **operations** navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityState|teamworkDeviceActivityState|The activity state of the device. The possible values are: `unknown`, `busy`, `idle`, `unavailable`, `unknownFutureValue`.|
|companyAssetTag|String|The company asset tag assigned by the admin on the device.|
|createdBy|[identitySet](../resources/identityset.md)|The details of the user that created the document.|
|createdDateTime|DateTimeOffset|The UTC date and time when the document was created.|
|currentUser|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|The signed-in user on the device.|
|deviceType|[teamworkDeviceType](teamworkdevicetype.md)|The type of device. The possible values are: `unknown`, `ipPhone`, `teamsRoom`, `surfaceHub`, `collaborationBar`, `teamsDisplay`, `touchConsole`, `lowCostPhone`, `teamsPanel`, `sip`, `unknownFutureValue`.|
|hardwareDetail|[teamworkHardwareDetail](../resources/teamworkhardwaredetail.md)|A collection of hardware related properties. For example, **oemSerialNumber** and **model**.|
|healthStatus|teamworkDeviceHealthStatus|The health status of the device. The possible values are: `unknown`, `offline`, `critical`, `nonUrgent`, `healthy`, `unknownFutureValue`.|
|id|String|Device identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The details of the user that modified the document.|
|lastModifiedDateTime|DateTimeOffset|The last UTC date and time when the document was modified.|
|notes|String|The notes put by the admin on the device.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activity|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|Holds properties that changes based on the device activity.|
|configuration|[teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md)|The configuration properties of the device.|
|health|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|The health properties of the device.|
|operations|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|The async operations on the device.|

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
  "activityState": "String",
  "companyAssetTag": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "currentUser": {
    "@odata.type": "microsoft.graph.teamworkUserIdentity"
  },
  "deviceType": "String",
  "hardwareDetail": {
    "@odata.type": "microsoft.graph.teamworkHardwareDetail"
  },
  "healthStatus": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "notes": "String"
}
```

