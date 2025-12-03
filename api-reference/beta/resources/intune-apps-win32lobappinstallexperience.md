---
title: "win32LobAppInstallExperience resource type"
description: "Contains installation experience properties for a Win32 App"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# win32LobAppInstallExperience resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains installation experience properties for a Win32 App

## Properties
|Property|Type|Description|
|:---|:---|:---|
|runAsAccount|[runAsAccountType](../resources/intune-shared-runasaccounttype.md)|Indicates the type of execution context the app runs in. The possible values are: `system`, `user`.|
|maxRunTimeInMinutes|Int32|The number of minutes the system will wait for install program to finish. Default value is 60 minutes.|
|deviceRestartBehavior|[win32LobAppRestartBehavior](../resources/intune-apps-win32lobapprestartbehavior.md)|Device restart behavior. The possible values are: `basedOnReturnCode`, `allow`, `suppress`, `force`.|

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
  "maxRunTimeInMinutes": 1024,
  "deviceRestartBehavior": "String"
}
```