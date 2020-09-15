---
title: "win32LobAppAssignmentSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# win32LobAppAssignmentSettings resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [mobileAppAssignmentSettings](../resources/mobileappassignmentsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|installTimeSettings|[mobileAppInstallTimeSettings](../resources/intune-mobileappinstalltimesettings.md)|**TODO: Add Description**|
|notifications|win32LobAppNotification|**TODO: Add Description**. Possible values are: `showAll`, `showReboot`, `hideAll`.|
|restartSettings|[win32LobAppRestartSettings](../resources/intune-win32lobapprestartsettings.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppAssignmentSettings",
  "notifications": "String",
  "restartSettings": {
    "@odata.type": "microsoft.graph.win32LobAppRestartSettings"
  },
  "installTimeSettings": {
    "@odata.type": "microsoft.graph.mobileAppInstallTimeSettings"
  }
}
```

