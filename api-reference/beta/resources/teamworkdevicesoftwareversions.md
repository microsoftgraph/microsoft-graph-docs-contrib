---
title: "teamworkDeviceSoftwareVersions resource type"
description: "Represents the details about software versions for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceSoftwareVersions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about software versions for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md), including firmware, operating system, Microsoft Teams client, and admin agent.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminAgentSoftwareVersion|String|The software version for the admin agent running on the device.|
|firmwareSoftwareVersion|String|The software version for the firmware running on the device.|
|operatingSystemSoftwareVersion|String|The software version for the operating system on the device.|
|partnerAgentSoftwareVersion|String|The software version for the partner agent running on the device.|
|teamsClientSoftwareVersion|String|The software version for the Teams client running on the device.|


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
  "firmwareSoftwareVersion": "String",
  "operatingSystemSoftwareVersion": "String",
  "partnerAgentSoftwareVersion": "String",
  "teamsClientSoftwareVersion": "String"
}
```

