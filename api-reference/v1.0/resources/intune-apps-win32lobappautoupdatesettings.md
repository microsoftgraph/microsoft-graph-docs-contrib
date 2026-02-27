---
title: "win32LobAppAutoUpdateSettings resource type"
description: "Contains properties used to perform the auto-update of an application."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# win32LobAppAutoUpdateSettings resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to perform the auto-update of an application.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|autoUpdateSupersededAppsState|[win32LobAutoUpdateSupersededAppsState](../resources/intune-apps-win32lobautoupdatesupersededappsstate.md)|The auto-update superseded apps state setting for the app assignment. Possible values are notConfigured and enabled. Default value is notConfigured. The possible values are: `notConfigured`, `enabled`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppAutoUpdateSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppAutoUpdateSettings",
  "autoUpdateSupersededAppsState": "String"
}
```