---
title: "teamworkSoftwareUpdateStatus resource type"
description: "Represents the details about the update status of the software for various components, such as admin agent, company portal, firmware, operating system, partner agent, and Microsoft Teams client, in a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkSoftwareUpdateStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the update status of the software for various components, such as admin agent, company portal, firmware, operating system, partner agent, and Microsoft Teams client, in a Microsoft Teams-enabled [device](../resources/teamworkdevice.md). It indicates whether a software update is required or not.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availableVersion|String|The available software version to update.|
|currentVersion|String|The current software version.|
|softwareFreshness|teamworkSoftwareFreshness|The update status of the software. The possible values are: `unknown`, `latest`, `updateAvailable`, `unknownFutureValue`.|


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkSoftwareUpdateStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkSoftwareUpdateStatus",
  "availableVersion": "String",
  "currentVersion": "String",
  "softwareFreshness": "String"
}
```

