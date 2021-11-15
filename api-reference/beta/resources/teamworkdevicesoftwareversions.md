---
title: "teamworkDeviceSoftwareVersions resource type"
description: "Details of software versions."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceSoftwareVersions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information related to device software version like: Firmware/OS/TeamsApp/AdminAgent.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminAgentSoftwareVersion|String|Software version for admin agent running on device.|
|firmwareSoftwareVersion|String|Software version for firmware running on device.|
|operatingSystemSoftwareVersion|String|Software version for the operating system on the device.|
|partnerAgentSoftwareVersion|String|Software version for partner agent running on device.|
|teamsClientSoftwareVersion|String|Software version for teams client running on device.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkDeviceSoftwareVersions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDeviceSoftwareVersions",
  "adminAgentSoftwareVersion": "String",
  "operatingSystemSoftwareVersion": "String",
  "teamsClientSoftwareVersion": "String",
  "firmwareSoftwareVersion": "String",
  "partnerAgentSoftwareVersion": "String"
}
```

