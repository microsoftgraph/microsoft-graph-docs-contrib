---
title: "teamInfo resource type"
description: "Represents a team with basic information."
author: "devjha-ms"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# teamInfo resource type

Namespace: microsoft.graph

Represents a [team](team.md) with basic information.

Base type of [associatedTeamInfo](associatedteaminfo.md) and [sharedWithChannelTeamInfo](sharedwithchannelteaminfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the [team](team.md).|
|id|String|The unique identifier for the [team](team.md). Read-only.|
|tenantId|String|The ID of the Microsoft Entra tenant.|


## JSON representation
The following JSON representation shows the resource type.
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
  "displayName": "String",
  "id": "String (identifier)",
  "tenantId": "String"
}
```
