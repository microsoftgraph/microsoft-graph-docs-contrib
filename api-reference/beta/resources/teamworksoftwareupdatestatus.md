---
title: "teamworkSoftwareUpdateStatus resource type"
description: "Represents the details about the update status of the software for various components, such as admin agent, company portal, firmware, operating system, partner agent, and Microsoft Teams client, in a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
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
The following is a JSON representation of the resource.
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

