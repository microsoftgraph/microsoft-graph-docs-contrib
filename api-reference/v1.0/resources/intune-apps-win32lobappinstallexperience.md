---
title: "win32LobAppInstallExperience resource type"
description: "Contains installation experience properties for a Win32 App"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# win32LobAppInstallExperience resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains installation experience properties for a Win32 App

## Properties
|Property|Type|Description|
|:---|:---|:---|
|runAsAccount|[runAsAccountType](../resources/intune-apps-runasaccounttype.md)|Indicates the type of execution context the app runs in. Possible values are: `system`, `user`.|
|deviceRestartBehavior|[win32LobAppRestartBehavior](../resources/intune-apps-win32lobapprestartbehavior.md)|Device restart behavior. Possible values are: `basedOnReturnCode`, `allow`, `suppress`, `force`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppInstallExperience"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppInstallExperience",
  "runAsAccount": "String",
  "deviceRestartBehavior": "String"
}
```
