---
title: "teamInfo resource type"
description: "Represents a team with fewer properties."
author: "devjha-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [team](team.md) with basic information.
Base type of [associatedTeamInfo](associatedteaminfo.md) and [sharedWithChannelTeamInfo](sharedwithchannelteaminfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the team.|
|tenantId|String|The ID of the Azure Active Directory tenant.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamInfo",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamInfo",
  "id": "String (identifier)",
  "tenantId": "String",
  "displayName": "String"
}
```

## See also
- [associatedTeamInfo](associatedteaminfo.md)
- [sharedWithChannelTeamInfo](sharedwithchannelteaminfo.md)

