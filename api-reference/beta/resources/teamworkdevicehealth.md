---
title: "teamworkDeviceHealth resource type"
description: "Device health details."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of device health. It is calculated based on device configuration and other device parameters. 

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get teamworkDeviceHealth](../api/teamworkdevicehealth-get.md)|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|Read the properties and relationships of a [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connection|[teamworkConnection](../resources/teamworkconnection.md)|ConnectionStatus info.|
|createdBy|[identitySet](../resources/intune-identityset.md)|CreatedBy.|
|createdDateTime|DateTimeOffset|Document created time.|
|hardwareHealth|[teamworkHardwareHealth](../resources/teamworkhardwarehealth.md)|Health related to device hardware.|
|id|String|Doucument identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|Last modifiedby.|
|lastModifiedDateTime|DateTimeOffset|Last modified time.|
|loginStatus|[teamworkLoginStatus](../resources/teamworkloginstatus.md)|Login status of teams, skype and exchange.|
|peripheralsHealth|[teamworkPeripheralsHealth](../resources/teamworkperipheralshealth.md)|Peripherals health-related info like speaker health, microphone health etc.|
|softwareUpdateHealth|[teamworkSoftwareUpdateHealth](../resources/teamworksoftwareupdatehealth.md)|Software updates available.|

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

