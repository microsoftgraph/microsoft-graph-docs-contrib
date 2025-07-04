---
title: "win32LobAppAutoUpdateSettings resource type"
description: "Contains properties used to perform the auto-update of an application."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/12/2024
---

# win32LobAppAutoUpdateSettings resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to perform the auto-update of an application.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|autoUpdateSupersededApps|[win32LobAppAutoUpdateSupersededApps](../resources/intune-policyset-win32lobappautoupdatesupersededapps.md)|The auto-update superseded apps setting for the app assignment. Possible values are notConfigured and enabled. Default value is notConfigured. Possible values are: `notConfigured`, `enabled`, `unknownFutureValue`.|

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
