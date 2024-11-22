---
title: "teamworkSoftwareUpdateHealth resource type"
description: "Represents the details about the software updates available for different components, such as admin agent, company portal, firmware, operating system, partner agent, and Microsoft Teams client, in a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkSoftwareUpdateHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the software updates available for different components, such as admin agent, company portal, firmware, operating system, partner agent, and Microsoft Teams client, in a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminAgentSoftwareUpdateStatus|[teamworkSoftwareUpdateStatus](../resources/teamworksoftwareupdatestatus.md)|The software update available for the admin agent.|
|companyPortalSoftwareUpdateStatus|[teamworkSoftwareUpdateStatus](../resources/teamworksoftwareupdatestatus.md)|The software update available for the company portal.|
|firmwareSoftwareUpdateStatus|[teamworkSoftwareUpdateStatus](../resources/teamworksoftwareupdatestatus.md)|The software update available for the firmware.|
|operatingSystemSoftwareUpdateStatus|[teamworkSoftwareUpdateStatus](../resources/teamworksoftwareupdatestatus.md)|The software update available for the operating system.|
|partnerAgentSoftwareUpdateStatus|[teamworkSoftwareUpdateStatus](../resources/teamworksoftwareupdatestatus.md)|The software update available for the partner agent.|
|teamsClientSoftwareUpdateStatus|[teamworkSoftwareUpdateStatus](../resources/teamworksoftwareupdatestatus.md)|The software update available for the Teams client.|


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkSoftwareUpdateHealth"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkSoftwareUpdateHealth",
  "adminAgentSoftwareUpdateStatus": {
    "@odata.type": "microsoft.graph.teamworkSoftwareUpdateStatus"
  },
  "companyPortalSoftwareUpdateStatus": {
    "@odata.type": "microsoft.graph.teamworkSoftwareUpdateStatus"
  },
  "firmwareSoftwareUpdateStatus": {
    "@odata.type": "microsoft.graph.teamworkSoftwareUpdateStatus"
  },
  "operatingSystemSoftwareUpdateStatus": {
    "@odata.type": "microsoft.graph.teamworkSoftwareUpdateStatus"
  },
  "partnerAgentSoftwareUpdateStatus": {
    "@odata.type": "microsoft.graph.teamworkSoftwareUpdateStatus"
  },
  "teamsClientSoftwareUpdateStatus": {
    "@odata.type": "microsoft.graph.teamworkSoftwareUpdateStatus"
  }
}
```

