---
title: "userTeamwork resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userTeamwork resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamwork](../api/user-list-teamwork.md)|[userTeamwork](../resources/userteamwork.md) collection|Get the userTeamwork resources from the teamwork navigation property.|
|[Create teamwork](../api/user-post-teamwork.md)|[userTeamwork](../resources/userteamwork.md)|Create a new userTeamwork object.|
|[Update teamwork](../api/user-update-teamwork.md)|[userTeamwork](../resources/userteamwork.md)|Update the properties of a teamwork object.|
|[Get teamwork](../api/user-get-userteamwork.md)|[userTeamwork](../resources/userteamwork.md)|Read the properties and relationships of a [userTeamwork](../resources/userteamwork.md) object.|
|[Delete teamwork](../api/user-delete-teamwork.md)|None|Delete a [userTeamwork](../resources/userteamwork.md) object.|
|[List userTeamworks](../api/userteamwork-list.md)|[userTeamwork](../resources/userteamwork.md) collection|Get a list of the [userTeamwork](../resources/userteamwork.md) objects and their properties.|
|[Create userTeamwork](../api/userteamwork-create.md)|[userTeamwork](../resources/userteamwork.md)|Create a new [userTeamwork](../resources/userteamwork.md) object.|
|[Get userTeamwork](../api/userteamwork-get.md)|[userTeamwork](../resources/userteamwork.md)|Read the properties and relationships of a [userTeamwork](../resources/userteamwork.md) object.|
|[Update userTeamwork](../api/userteamwork-update.md)|[userTeamwork](../resources/userteamwork.md)|Update the properties of a [userTeamwork](../resources/userteamwork.md) object.|
|[Delete userTeamwork](../api/userteamwork-delete.md)|None|Deletes a [userTeamwork](../resources/userteamwork.md) object.|
|[sendActivityNotification](../api/userteamwork-sendactivitynotification.md)|None|**TODO: Add Description**|
|[List installedApps](../api/userteamwork-list-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|Get the teamsAppInstallation resources from the installedApps navigation property.|
|[Create installedApps](../api/userteamwork-post-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Create a new teamsAppInstallation object.|
|[Get installedApps](../api/userteamwork-get-teamsappinstallation.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Read the properties and relationships of a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Update installedApps](../api/userteamwork-update-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Update the properties of an installedApps object.|
|[Delete installedApps](../api/userteamwork-delete-installedapps.md)|None|Delete a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|installedApps|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userTeamwork",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userTeamwork",
  "id": "String (identifier)"
}
```

