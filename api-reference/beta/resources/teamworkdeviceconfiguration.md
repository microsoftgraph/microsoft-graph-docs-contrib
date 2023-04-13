---
title: "teamworkDeviceConfiguration resource type"
description: "Represents configuration details for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents configuration details for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md), including software versions, peripheral device configuration (for example, camera, display, microphone, and speaker), hardware configuration, and Teams client configuration.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get teamworkDeviceConfiguration](../api/teamworkdeviceconfiguration-get.md)|[teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md)|Read the properties and relationships of a [teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cameraConfiguration|[teamworkCameraConfiguration](../resources/teamworkcameraconfiguration.md)|The camera configuration. Applicable only for Microsoft Teams Rooms-enabled devices.|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user who created the device configuration document.|
|createdDateTime|DateTimeOffset|The UTC date and time when the device configuration document was created.|
|displayConfiguration|[teamworkDisplayConfiguration](../resources/teamworkdisplayconfiguration.md)|The display configuration.|
|hardwareConfiguration|[teamworkHardwareConfiguration](../resources/teamworkhardwareconfiguration.md)|The hardware configuration. Applicable only for Teams Rooms-enabled devices.|
|id|String|Document identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user who last modified the device configuration.|
|lastModifiedDateTime|DateTimeOffset|The UTC date and time when the device configuration was last modified.|
|microphoneConfiguration|[teamworkMicrophoneConfiguration](../resources/teamworkmicrophoneconfiguration.md)|The microphone configuration. Applicable only for Teams Rooms-enabled devices.|
|softwareVersions|[teamworkDeviceSoftwareVersions](../resources/teamworkdevicesoftwareversions.md)|Information related to software versions for the device, such as firmware, operating system, Teams client, and admin agent.|
|speakerConfiguration|[teamworkSpeakerConfiguration](../resources/teamworkspeakerconfiguration.md)|The speaker configuration. Applicable only for Teams Rooms-enabled devices.|
|systemConfiguration|[teamworkSystemConfiguration](../resources/teamworksystemconfiguration.md)|The system configuration. Not applicable for Teams Rooms-enabled devices.|
|teamsClientConfiguration|[teamworkTeamsClientConfiguration](../resources/teamworkteamsclientconfiguration.md)|The Teams client configuration. Applicable only for Teams Rooms-enabled devices.|


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
  "cameraConfiguration": {
    "@odata.type": "microsoft.graph.teamworkCameraConfiguration"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "displayConfiguration": {
    "@odata.type": "microsoft.graph.teamworkDisplayConfiguration"
  },
  "hardwareConfiguration": {
    "@odata.type": "microsoft.graph.teamworkHardwareConfiguration"
  },
  "id": "String (identifier)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "microphoneConfiguration": {
    "@odata.type": "microsoft.graph.teamworkMicrophoneConfiguration"
  },
  "softwareVersions": {
    "@odata.type": "microsoft.graph.teamworkDeviceSoftwareVersions"
  },
  "speakerConfiguration": {
    "@odata.type": "microsoft.graph.teamworkSpeakerConfiguration"
  },
  "systemConfiguration": {
    "@odata.type": "microsoft.graph.teamworkSystemConfiguration"
  },
  "teamsClientConfiguration": {
    "@odata.type": "microsoft.graph.teamworkTeamsClientConfiguration"
  }
}
```

