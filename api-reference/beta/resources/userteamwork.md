---
title: "userTeamwork resource type"
description: "Represents a container for the range of Microsoft Teams functionalities that are available per user in the tenant."
author: "akjo"
doc_type: resourcePageType
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# userTeamwork resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for the range of Microsoft Teams functionalities that are available per user in the tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List installedApps](../api/userteamwork-list-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|Retrieve the list of apps installed in the personal scope of the specified user.|
|[Get userTeamwork](../api/userteamwork-get.md)|[userTeamwork](../resources/userteamwork.md)|Get userTeamwork settings for the specified [user](../resources/user.md), which includes the Microsoft Teams region and the locale chosen by the user.|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|id| String|The unique identifier for the **userTeamwork** object.|
|locale|String |The chosen locale of a user in Microsoft Teams.|  
|region |String|The region of the user in Microsoft Teams.|

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|associatedTeams|[associatedTeamInfo](associatedteaminfo.md) collection| The list of [associatedTeamInfo](associatedteaminfo.md) objects that a [user](user.md) is associated with.|
|installedApps|[teamsAppInstallation](teamsappinstallation.md) collection|The apps installed in the personal scope of this user.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userTeamwork",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "locale" : "String",
  "region" : "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "userteamwork resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

## Related content

- [teamwork resource type](teamwork.md)
