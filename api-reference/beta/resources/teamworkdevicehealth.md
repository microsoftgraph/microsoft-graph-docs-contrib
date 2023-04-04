---
title: "teamworkDeviceHealth resource type"
description: "Represents the health details of a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the health details of a Microsoft Teams-enabled [device](../resources/teamworkdevice.md). The device health is calculated based on the device configuration and other device parameters.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get teamworkDeviceHealth](../api/teamworkdevicehealth-get.md)|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|Read the properties and relationships of a [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connection|[teamworkConnection](../resources/teamworkconnection.md)|Information about the connection status.|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user who created the device health document.|
|createdDateTime|DateTimeOffset|The UTC date and time when the device health document was created.|
|hardwareHealth|[teamworkHardwareHealth](../resources/teamworkhardwarehealth.md)|Health details about the device hardware.|
|id|String|Doucument identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user who last modified the device health details.|
|lastModifiedDateTime|DateTimeOffset|The UTC date and time when the device health detail was last modified.|
|loginStatus|[teamworkLoginStatus](../resources/teamworkloginstatus.md)|The login status of Microsoft Teams, Skype for Business, and Exchange.|
|peripheralsHealth|[teamworkPeripheralsHealth](../resources/teamworkperipheralshealth.md)|Health details about all peripherals (for example, speaker and microphone) attached to a device.|
|softwareUpdateHealth|[teamworkSoftwareUpdateHealth](../resources/teamworksoftwareupdatehealth.md)|Software updates available for the device.|

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
  "connection": {
    "@odata.type": "microsoft.graph.teamworkConnection"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "hardwareHealth": {
    "@odata.type": "microsoft.graph.teamworkHardwareHealth"
  },
  "id": "String (identifier)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "loginStatus": {
    "@odata.type": "microsoft.graph.teamworkLoginStatus"
  },
  "peripheralsHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralsHealth"
  },
  "softwareUpdateHealth": {
    "@odata.type": "microsoft.graph.teamworkSoftwareUpdateHealth"
  }
}
```

