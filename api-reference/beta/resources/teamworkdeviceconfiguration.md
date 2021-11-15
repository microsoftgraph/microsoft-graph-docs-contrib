---
title: "teamworkDeviceConfiguration resource type"
description: "Device confiduration details."
author: "author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Device configuration details.
It has properties related to device configuration like software version, peripheral config (camera/display/microphone/speaker), hardware config, and Teams config.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get teamworkDeviceConfiguration](../api/teamworkdeviceconfiguration-get.md)|[teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md)|Read the properties and relationships of a [teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cameraConfiguration|[teamworkCameraConfiguration](../resources/teamworkcameraconfiguration.md)|Camera configuration. Applicable only for Teams Room Devices.|
|createdBy|[identitySet](../resources/intune-identityset.md)|Createdby.|
|createdDateTime|DateTimeOffset|Document created time.|
|displayConfiguration|[teamworkDisplayConfiguration](../resources/teamworkdisplayconfiguration.md)|	Display configuration.|
|hardwareConfiguration|[teamworkHardwareConfiguration](../resources/teamworkhardwareconfiguration.md)|Hardware configuration. Applicable only for Teams Room Devices.|
|id|String|Document identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|Last modifiedby.|
|lastModifiedDateTime|DateTimeOffset|Last modified time.|
|microphoneConfiguration|[teamworkMicrophoneConfiguration](../resources/teamworkmicrophoneconfiguration.md)|Microphone configuration. Applicable only for Teams Room Devices.|
|softwareVersions|[teamworkDeviceSoftwareVersions](../resources/teamworkdevicesoftwareversions.md)|Information related to device software version like: Firmware/OS/TeamsApp/AdminAgent.|
|speakerConfiguration|[teamworkSpeakerConfiguration](../resources/teamworkspeakerconfiguration.md)|Speaker configuration. Applicable only for Teams Room Devices.|
|systemConfiguration|[teamworkSystemConfiguration](../resources/teamworksystemconfiguration.md)|System configuration. Not applicable for Teams Room Devices.|
|teamsClientConfiguration|[teamworkTeamsClientConfiguration](../resources/teamworkteamsclientconfiguration.md)|Teams client configuration. Applicable only for Teams Room Devices.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkDeviceConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDeviceConfiguration",
  "id": "String (identifier)",
  "softwareVersions": {
    "@odata.type": "microsoft.graph.teamworkDeviceSoftwareVersions"
  },
  "displayConfiguration": {
    "@odata.type": "microsoft.graph.teamworkDisplayConfiguration"
  },
  "cameraConfiguration": {
    "@odata.type": "microsoft.graph.teamworkCameraConfiguration"
  },
  "speakerConfiguration": {
    "@odata.type": "microsoft.graph.teamworkSpeakerConfiguration"
  },
  "microphoneConfiguration": {
    "@odata.type": "microsoft.graph.teamworkMicrophoneConfiguration"
  },
  "teamsClientConfiguration": {
    "@odata.type": "microsoft.graph.teamworkTeamsClientConfiguration"
  },
  "hardwareConfiguration": {
    "@odata.type": "microsoft.graph.teamworkHardwareConfiguration"
  },
  "systemConfiguration": {
    "@odata.type": "microsoft.graph.teamworkSystemConfiguration"
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

