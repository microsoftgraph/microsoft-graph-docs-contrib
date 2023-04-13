---
title: "associatedTeamInfo resource type"
description: "Represents a team that is associated with a user."
author: "devjha-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# associatedTeamInfo resource type

Namespace: microsoft.graph

Represents a [team](team.md) that is associated with a [user](../resources/user.md).

Currently, a [user](../resources/user.md) can be associated with a [team](../resources/team.md) in two different ways:
* A [user](../resources/user.md) can be a direct member of a [team](../resources/team.md).
* A [user](../resources/user.md) can be a member of a shared [channel](../resources/channel.md) that is hosted inside a [team](../resources/team.md).

Inherits from [teamInfo](../resources/teaminfo.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List associatedTeamInfo](../api/associatedteaminfo-list.md)|[associatedTeamInfo](../resources/associatedteaminfo.md) collection|Get the list of [teams](../resources/associatedteaminfo.md) in Microsoft Teams that a [user](../resources/user.md) is associated with.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the [team](team.md). Inherited from [teamInfo](../resources/teaminfo.md).|
|id|String|The unique identifier for the [team](team.md). Read-only.|
|tenantId|String|The ID of the Azure Active Directory tenant. Inherited from [teamInfo](../resources/teaminfo.md).|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.associatedTeamInfo",
  "baseType": "microsoft.graph.teamInfo",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.associatedTeamInfo",
  "displayName": "String",
  "id": "String (identifier)",
  "tenantId": "String"
}
```

## See also
- [Get team](../api/team-get.md)