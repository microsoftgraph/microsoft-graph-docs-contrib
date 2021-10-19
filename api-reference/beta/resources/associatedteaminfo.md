---
title: "associatedTeamInfo resource type"
description: "A associatedTeamInfo represents a team that is associated with a user."
author: "devjha-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# associatedTeamInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A associatedTeamInfo represents a [team](team.md) that is associated with a user. 
Today, there are two types of association a user could have with a team:
  1. User can be a direct member of a [team](../resources/team.md).
  2. User can be a member of [shared channel](../resources/channel.md) that is hosted inside a [team](../resources/team.md).



Inherits from [teamInfo](../resources/teaminfo.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List associatedTeamInfoes](../api/associatedteaminfo-list.md)|[associatedTeamInfo](../resources/associatedteaminfo.md) collection|Get a list of the [associatedTeamInfo](../resources/associatedteaminfo.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the team. Inherited from [teamInfo](../resources/teaminfo.md).|
|tenantId|String|The name of the team. Inherited from [teamInfo](../resources/teaminfo.md).|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.associatedTeamInfo",
  "baseType": "Microsoft.Teams.GraphSvc.teamInfo",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.associatedTeamInfo",
  "id": "String (identifier)",
  "tenantId": "String",
  "displayName": "String"
}
```

## See also
- [Get team](../api/team-get.md)