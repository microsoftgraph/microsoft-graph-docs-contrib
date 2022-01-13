---
title: "teamworkSoftwareUpdateStatus resource type"
description: "Details of software update status."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkSoftwareUpdateStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of software update status of various components (AdminAgent | CompanyPortal | Firmware | OperatingSystem| PartnerAgent | TeamsClient) indicating whether a software update is required or not.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availableVersion|String|Available software version to update.|
|currentVersion|String|Current software version.|
|softwareFreshness|teamworkSoftwareFreshness|Software status. The possible values are: `unknown`, `latest`, `updateAvailable`, `unknownFutureValue`.|


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

