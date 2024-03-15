---
title: "win32LobAppAutoUpdateSettings resource type"
description: "Contains properties used to perform the auto-update of an application."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# win32LobAppAutoUpdateSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to perform the auto-update of an application.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|autoUpdateSupersededApps|[win32LobAppAutoUpdateSupersededApps](../resources/intune-apps-win32lobappautoupdatesupersededapps.md)|The auto-update superseded apps setting for the app assignment. Possible values are notConfigured and enabled. Default value is notConfigured. Possible values are: `notConfigured`, `enabled`, `unknownFutureValue`.|

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
  "autoUpdateSupersededApps": "String"
}
```
